// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.
import * as path from "path";
import vscode from "vscode";
import {
  LanguageClient,
  TextDocumentIdentifier,
} from "vscode-languageclient/node";

import {
  AzExtTreeDataProvider,
  IActionContext,
  parseError,
  UserCancelledError,
} from "@microsoft/vscode-azext-utils";

import { selectParameterFile } from "../deploy/selectParameterFile";
import { AzLoginTreeItem } from "../deploy/tree/AzLoginTreeItem";
import { AzResourceGroupTreeItem } from "../deploy/tree/AzResourceGroupTreeItem";
import { LocationTreeItem } from "../deploy/tree/LocationTreeItem";
import { ext } from "../extensionVariables";
import { deploymentScopeRequestType } from "../language";
import { appendToOutputChannel } from "../utils/appendToOutputChannel";
import { Command } from "./types";

export class DeployCommand implements Command {
  public readonly id = "bicep.deploy";
  public constructor(private readonly client: LanguageClient) {}

  public async execute(
    _context: IActionContext,
    documentUri?: vscode.Uri | undefined
  ): Promise<void> {
    documentUri ??= vscode.window.activeTextEditor?.document.uri;

    if (!documentUri) {
      return;
    }

    if (documentUri.scheme === "output") {
      // The output panel in VS Code was implemented as a text editor by accident. Due to breaking change concerns,
      // it won't be fixed in VS Code, so we need to handle it on our side.
      // See https://github.com/microsoft/vscode/issues/58869#issuecomment-422322972 for details.
      vscode.window.showInformationMessage(
        "Unable to locate an active Bicep file, as the output panel is focused. Please focus a text editor first before running the command."
      );

      return;
    }

    const documentPath = documentUri.fsPath;
    const fileName = path.basename(documentPath);
    appendToOutputChannel(`Started deployment of ${fileName}`);

    try {
      const deploymentScopeResponse = await this.client.sendRequest(
        deploymentScopeRequestType,
        { textDocument: TextDocumentIdentifier.create(documentUri.fsPath) }
      );
      const deploymentScope = deploymentScopeResponse?.scope;
      const template = deploymentScopeResponse?.template;

      if (!template) {
        appendToOutputChannel(
          "Deployment failed. " + deploymentScopeResponse?.errorMessage
        );
        return;
      }

      appendToOutputChannel(
        `Scope specified in ${fileName} -> ${deploymentScope}`
      );

      // Shows a treeView that allows user to log in to Azure. If the user is already logged in, then does nothing.
      const azLoginTreeItem: AzLoginTreeItem = new AzLoginTreeItem();
      const azExtTreeDataProvider = new AzExtTreeDataProvider(
        azLoginTreeItem,
        ""
      );
      await azExtTreeDataProvider.showTreeItemPicker<AzLoginTreeItem>(
        "",
        _context
      );

      if (deploymentScope == "resourceGroup") {
        await handleResourceGroupDeployment(
          _context,
          documentUri,
          deploymentScope,
          template,
          this.client
        );
      } else if (deploymentScope == "subscription") {
        await handleSubscriptionDeployment(
          _context,
          documentUri,
          deploymentScope,
          template,
          this.client
        );
      } else if (deploymentScope == "managementGroup") {
        await handleManagementGroupDeployment(
          _context,
          documentUri,
          deploymentScope,
          template,
          this.client
        );
      } else if (deploymentScope == "tenant") {
        appendToOutputChannel("Tenant scope deployment is not supported.");
      } else {
        appendToOutputChannel(
          "Deployment failed. " + deploymentScopeResponse?.errorMessage
        );
      }
    } catch (exception) {
      if (exception instanceof UserCancelledError) {
        appendToOutputChannel("Deployment was canceled.");
      } else {
        this.client.error("Deploy failed", parseError(exception).message, true);
      }
    }
  }
}

async function handleManagementGroupDeployment(
  context: IActionContext,
  documentUri: vscode.Uri,
  deploymentScope: string,
  template: string,
  client: LanguageClient
) {
  const managementGroupTreeItem =
    await ext.azManagementGroupTreeItem.showTreeItemPicker<LocationTreeItem>(
      "",
      context
    );
  const managementGroupId = managementGroupTreeItem.id;

  if (managementGroupId) {
    const location = await vscode.window.showInputBox({
      placeHolder: "Please enter location",
    });

    if (location) {
      const parameterFilePath = await selectParameterFile(context, documentUri);

      await sendDeployCommand(
        documentUri.fsPath,
        parameterFilePath,
        managementGroupId,
        deploymentScope,
        location,
        template,
        client
      );
    }
  }
}

async function handleResourceGroupDeployment(
  context: IActionContext,
  documentUri: vscode.Uri,
  deploymentScope: string,
  template: string,
  client: LanguageClient
) {
  const resourceGroupTreeItem =
    await ext.azResourceGroupTreeItem.showTreeItemPicker<AzResourceGroupTreeItem>(
      "",
      context
    );
  const resourceGroupId = resourceGroupTreeItem.id;

  if (resourceGroupId) {
    const parameterFilePath = await selectParameterFile(context, documentUri);

    await sendDeployCommand(
      documentUri.fsPath,
      parameterFilePath,
      resourceGroupId,
      deploymentScope,
      "",
      template,
      client
    );
  }
}

async function handleSubscriptionDeployment(
  context: IActionContext,
  documentUri: vscode.Uri,
  deploymentScope: string,
  template: string,
  client: LanguageClient
) {
  const locationTreeItem =
    await ext.azLocationTree.showTreeItemPicker<LocationTreeItem>("", context);
  const location = locationTreeItem.label;
  const subscriptionId = locationTreeItem.subscription.subscriptionPath;
  const parameterFilePath = await selectParameterFile(context, documentUri);

  await sendDeployCommand(
    documentUri.fsPath,
    parameterFilePath,
    subscriptionId,
    deploymentScope,
    location,
    template,
    client
  );
}

async function sendDeployCommand(
  documentPath: string,
  parameterFilePath: string,
  id: string,
  deploymentScope: string,
  location: string,
  template: string,
  client: LanguageClient
) {
  const deployOutput: string = await client.sendRequest(
    "workspace/executeCommand",
    {
      command: "deploy",
      arguments: [
        documentPath,
        parameterFilePath,
        id,
        deploymentScope,
        location,
        template,
      ],
    }
  );
  appendToOutputChannel(deployOutput);
}