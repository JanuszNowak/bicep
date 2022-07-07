var flatten1 = flatten('abc')
//@[000:1848) ProgramSyntax
//@[000:0029) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0012) | ├─IdentifierSyntax
//@[004:0012) | | └─Token(Identifier) |flatten1|
//@[013:0014) | ├─Token(Assignment) |=|
//@[015:0029) | └─FunctionCallSyntax
//@[015:0022) |   ├─IdentifierSyntax
//@[015:0022) |   | └─Token(Identifier) |flatten|
//@[022:0023) |   ├─Token(LeftParen) |(|
//@[023:0028) |   ├─FunctionArgumentSyntax
//@[023:0028) |   | └─StringSyntax
//@[023:0028) |   |   └─Token(StringComplete) |'abc'|
//@[028:0029) |   └─Token(RightParen) |)|
//@[029:0030) ├─Token(NewLine) |\n|
var flatten2 = flatten(['abc'], 'def')
//@[000:0038) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0012) | ├─IdentifierSyntax
//@[004:0012) | | └─Token(Identifier) |flatten2|
//@[013:0014) | ├─Token(Assignment) |=|
//@[015:0038) | └─FunctionCallSyntax
//@[015:0022) |   ├─IdentifierSyntax
//@[015:0022) |   | └─Token(Identifier) |flatten|
//@[022:0023) |   ├─Token(LeftParen) |(|
//@[023:0030) |   ├─FunctionArgumentSyntax
//@[023:0030) |   | └─ArraySyntax
//@[023:0024) |   |   ├─Token(LeftSquare) |[|
//@[024:0029) |   |   ├─ArrayItemSyntax
//@[024:0029) |   |   | └─StringSyntax
//@[024:0029) |   |   |   └─Token(StringComplete) |'abc'|
//@[029:0030) |   |   └─Token(RightSquare) |]|
//@[030:0031) |   ├─Token(Comma) |,|
//@[032:0037) |   ├─FunctionArgumentSyntax
//@[032:0037) |   | └─StringSyntax
//@[032:0037) |   |   └─Token(StringComplete) |'def'|
//@[037:0038) |   └─Token(RightParen) |)|
//@[038:0040) ├─Token(NewLine) |\n\n|

var map1 = map('abc')
//@[000:0021) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0008) | ├─IdentifierSyntax
//@[004:0008) | | └─Token(Identifier) |map1|
//@[009:0010) | ├─Token(Assignment) |=|
//@[011:0021) | └─FunctionCallSyntax
//@[011:0014) |   ├─IdentifierSyntax
//@[011:0014) |   | └─Token(Identifier) |map|
//@[014:0015) |   ├─Token(LeftParen) |(|
//@[015:0020) |   ├─FunctionArgumentSyntax
//@[015:0020) |   | └─StringSyntax
//@[015:0020) |   |   └─Token(StringComplete) |'abc'|
//@[020:0021) |   └─Token(RightParen) |)|
//@[021:0022) ├─Token(NewLine) |\n|
var map2 = map('abc', 'def')
//@[000:0028) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0008) | ├─IdentifierSyntax
//@[004:0008) | | └─Token(Identifier) |map2|
//@[009:0010) | ├─Token(Assignment) |=|
//@[011:0028) | └─FunctionCallSyntax
//@[011:0014) |   ├─IdentifierSyntax
//@[011:0014) |   | └─Token(Identifier) |map|
//@[014:0015) |   ├─Token(LeftParen) |(|
//@[015:0020) |   ├─FunctionArgumentSyntax
//@[015:0020) |   | └─StringSyntax
//@[015:0020) |   |   └─Token(StringComplete) |'abc'|
//@[020:0021) |   ├─Token(Comma) |,|
//@[022:0027) |   ├─FunctionArgumentSyntax
//@[022:0027) |   | └─StringSyntax
//@[022:0027) |   |   └─Token(StringComplete) |'def'|
//@[027:0028) |   └─Token(RightParen) |)|
//@[028:0029) ├─Token(NewLine) |\n|
var map3 = map(range(0, 10), 'def')
//@[000:0035) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0008) | ├─IdentifierSyntax
//@[004:0008) | | └─Token(Identifier) |map3|
//@[009:0010) | ├─Token(Assignment) |=|
//@[011:0035) | └─FunctionCallSyntax
//@[011:0014) |   ├─IdentifierSyntax
//@[011:0014) |   | └─Token(Identifier) |map|
//@[014:0015) |   ├─Token(LeftParen) |(|
//@[015:0027) |   ├─FunctionArgumentSyntax
//@[015:0027) |   | └─FunctionCallSyntax
//@[015:0020) |   |   ├─IdentifierSyntax
//@[015:0020) |   |   | └─Token(Identifier) |range|
//@[020:0021) |   |   ├─Token(LeftParen) |(|
//@[021:0022) |   |   ├─FunctionArgumentSyntax
//@[021:0022) |   |   | └─IntegerLiteralSyntax
//@[021:0022) |   |   |   └─Token(Integer) |0|
//@[022:0023) |   |   ├─Token(Comma) |,|
//@[024:0026) |   |   ├─FunctionArgumentSyntax
//@[024:0026) |   |   | └─IntegerLiteralSyntax
//@[024:0026) |   |   |   └─Token(Integer) |10|
//@[026:0027) |   |   └─Token(RightParen) |)|
//@[027:0028) |   ├─Token(Comma) |,|
//@[029:0034) |   ├─FunctionArgumentSyntax
//@[029:0034) |   | └─StringSyntax
//@[029:0034) |   |   └─Token(StringComplete) |'def'|
//@[034:0035) |   └─Token(RightParen) |)|
//@[035:0036) ├─Token(NewLine) |\n|
var map4 = map(range(0, 10), () => null)
//@[000:0040) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0008) | ├─IdentifierSyntax
//@[004:0008) | | └─Token(Identifier) |map4|
//@[009:0010) | ├─Token(Assignment) |=|
//@[011:0040) | └─FunctionCallSyntax
//@[011:0014) |   ├─IdentifierSyntax
//@[011:0014) |   | └─Token(Identifier) |map|
//@[014:0015) |   ├─Token(LeftParen) |(|
//@[015:0027) |   ├─FunctionArgumentSyntax
//@[015:0027) |   | └─FunctionCallSyntax
//@[015:0020) |   |   ├─IdentifierSyntax
//@[015:0020) |   |   | └─Token(Identifier) |range|
//@[020:0021) |   |   ├─Token(LeftParen) |(|
//@[021:0022) |   |   ├─FunctionArgumentSyntax
//@[021:0022) |   |   | └─IntegerLiteralSyntax
//@[021:0022) |   |   |   └─Token(Integer) |0|
//@[022:0023) |   |   ├─Token(Comma) |,|
//@[024:0026) |   |   ├─FunctionArgumentSyntax
//@[024:0026) |   |   | └─IntegerLiteralSyntax
//@[024:0026) |   |   |   └─Token(Integer) |10|
//@[026:0027) |   |   └─Token(RightParen) |)|
//@[027:0028) |   ├─Token(Comma) |,|
//@[029:0039) |   ├─FunctionArgumentSyntax
//@[029:0039) |   | └─LambdaSyntax
//@[029:0031) |   |   ├─VariableBlockSyntax
//@[029:0030) |   |   | ├─Token(LeftParen) |(|
//@[030:0031) |   |   | └─Token(RightParen) |)|
//@[032:0034) |   |   ├─Token(Arrow) |=>|
//@[035:0039) |   |   └─NullLiteralSyntax
//@[035:0039) |   |     └─Token(NullKeyword) |null|
//@[039:0040) |   └─Token(RightParen) |)|
//@[040:0042) ├─Token(NewLine) |\n\n|

var filter1 = filter('abc')
//@[000:0027) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0011) | ├─IdentifierSyntax
//@[004:0011) | | └─Token(Identifier) |filter1|
//@[012:0013) | ├─Token(Assignment) |=|
//@[014:0027) | └─FunctionCallSyntax
//@[014:0020) |   ├─IdentifierSyntax
//@[014:0020) |   | └─Token(Identifier) |filter|
//@[020:0021) |   ├─Token(LeftParen) |(|
//@[021:0026) |   ├─FunctionArgumentSyntax
//@[021:0026) |   | └─StringSyntax
//@[021:0026) |   |   └─Token(StringComplete) |'abc'|
//@[026:0027) |   └─Token(RightParen) |)|
//@[027:0028) ├─Token(NewLine) |\n|
var filter2 = filter('abc', 'def')
//@[000:0034) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0011) | ├─IdentifierSyntax
//@[004:0011) | | └─Token(Identifier) |filter2|
//@[012:0013) | ├─Token(Assignment) |=|
//@[014:0034) | └─FunctionCallSyntax
//@[014:0020) |   ├─IdentifierSyntax
//@[014:0020) |   | └─Token(Identifier) |filter|
//@[020:0021) |   ├─Token(LeftParen) |(|
//@[021:0026) |   ├─FunctionArgumentSyntax
//@[021:0026) |   | └─StringSyntax
//@[021:0026) |   |   └─Token(StringComplete) |'abc'|
//@[026:0027) |   ├─Token(Comma) |,|
//@[028:0033) |   ├─FunctionArgumentSyntax
//@[028:0033) |   | └─StringSyntax
//@[028:0033) |   |   └─Token(StringComplete) |'def'|
//@[033:0034) |   └─Token(RightParen) |)|
//@[034:0035) ├─Token(NewLine) |\n|
var filter3 = filter(range(0, 10), 'def')
//@[000:0041) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0011) | ├─IdentifierSyntax
//@[004:0011) | | └─Token(Identifier) |filter3|
//@[012:0013) | ├─Token(Assignment) |=|
//@[014:0041) | └─FunctionCallSyntax
//@[014:0020) |   ├─IdentifierSyntax
//@[014:0020) |   | └─Token(Identifier) |filter|
//@[020:0021) |   ├─Token(LeftParen) |(|
//@[021:0033) |   ├─FunctionArgumentSyntax
//@[021:0033) |   | └─FunctionCallSyntax
//@[021:0026) |   |   ├─IdentifierSyntax
//@[021:0026) |   |   | └─Token(Identifier) |range|
//@[026:0027) |   |   ├─Token(LeftParen) |(|
//@[027:0028) |   |   ├─FunctionArgumentSyntax
//@[027:0028) |   |   | └─IntegerLiteralSyntax
//@[027:0028) |   |   |   └─Token(Integer) |0|
//@[028:0029) |   |   ├─Token(Comma) |,|
//@[030:0032) |   |   ├─FunctionArgumentSyntax
//@[030:0032) |   |   | └─IntegerLiteralSyntax
//@[030:0032) |   |   |   └─Token(Integer) |10|
//@[032:0033) |   |   └─Token(RightParen) |)|
//@[033:0034) |   ├─Token(Comma) |,|
//@[035:0040) |   ├─FunctionArgumentSyntax
//@[035:0040) |   | └─StringSyntax
//@[035:0040) |   |   └─Token(StringComplete) |'def'|
//@[040:0041) |   └─Token(RightParen) |)|
//@[041:0042) ├─Token(NewLine) |\n|
var filter4 = filter(range(0, 10), () => null)
//@[000:0046) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0011) | ├─IdentifierSyntax
//@[004:0011) | | └─Token(Identifier) |filter4|
//@[012:0013) | ├─Token(Assignment) |=|
//@[014:0046) | └─FunctionCallSyntax
//@[014:0020) |   ├─IdentifierSyntax
//@[014:0020) |   | └─Token(Identifier) |filter|
//@[020:0021) |   ├─Token(LeftParen) |(|
//@[021:0033) |   ├─FunctionArgumentSyntax
//@[021:0033) |   | └─FunctionCallSyntax
//@[021:0026) |   |   ├─IdentifierSyntax
//@[021:0026) |   |   | └─Token(Identifier) |range|
//@[026:0027) |   |   ├─Token(LeftParen) |(|
//@[027:0028) |   |   ├─FunctionArgumentSyntax
//@[027:0028) |   |   | └─IntegerLiteralSyntax
//@[027:0028) |   |   |   └─Token(Integer) |0|
//@[028:0029) |   |   ├─Token(Comma) |,|
//@[030:0032) |   |   ├─FunctionArgumentSyntax
//@[030:0032) |   |   | └─IntegerLiteralSyntax
//@[030:0032) |   |   |   └─Token(Integer) |10|
//@[032:0033) |   |   └─Token(RightParen) |)|
//@[033:0034) |   ├─Token(Comma) |,|
//@[035:0045) |   ├─FunctionArgumentSyntax
//@[035:0045) |   | └─LambdaSyntax
//@[035:0037) |   |   ├─VariableBlockSyntax
//@[035:0036) |   |   | ├─Token(LeftParen) |(|
//@[036:0037) |   |   | └─Token(RightParen) |)|
//@[038:0040) |   |   ├─Token(Arrow) |=>|
//@[041:0045) |   |   └─NullLiteralSyntax
//@[041:0045) |   |     └─Token(NullKeyword) |null|
//@[045:0046) |   └─Token(RightParen) |)|
//@[046:0047) ├─Token(NewLine) |\n|
var filter5 = filter(range(0, 10), i => i)
//@[000:0042) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0011) | ├─IdentifierSyntax
//@[004:0011) | | └─Token(Identifier) |filter5|
//@[012:0013) | ├─Token(Assignment) |=|
//@[014:0042) | └─FunctionCallSyntax
//@[014:0020) |   ├─IdentifierSyntax
//@[014:0020) |   | └─Token(Identifier) |filter|
//@[020:0021) |   ├─Token(LeftParen) |(|
//@[021:0033) |   ├─FunctionArgumentSyntax
//@[021:0033) |   | └─FunctionCallSyntax
//@[021:0026) |   |   ├─IdentifierSyntax
//@[021:0026) |   |   | └─Token(Identifier) |range|
//@[026:0027) |   |   ├─Token(LeftParen) |(|
//@[027:0028) |   |   ├─FunctionArgumentSyntax
//@[027:0028) |   |   | └─IntegerLiteralSyntax
//@[027:0028) |   |   |   └─Token(Integer) |0|
//@[028:0029) |   |   ├─Token(Comma) |,|
//@[030:0032) |   |   ├─FunctionArgumentSyntax
//@[030:0032) |   |   | └─IntegerLiteralSyntax
//@[030:0032) |   |   |   └─Token(Integer) |10|
//@[032:0033) |   |   └─Token(RightParen) |)|
//@[033:0034) |   ├─Token(Comma) |,|
//@[035:0041) |   ├─FunctionArgumentSyntax
//@[035:0041) |   | └─LambdaSyntax
//@[035:0036) |   |   ├─LocalVariableSyntax
//@[035:0036) |   |   | └─IdentifierSyntax
//@[035:0036) |   |   |   └─Token(Identifier) |i|
//@[037:0039) |   |   ├─Token(Arrow) |=>|
//@[040:0041) |   |   └─VariableAccessSyntax
//@[040:0041) |   |     └─IdentifierSyntax
//@[040:0041) |   |       └─Token(Identifier) |i|
//@[041:0042) |   └─Token(RightParen) |)|
//@[042:0043) ├─Token(NewLine) |\n|
var filter6 = filter([true, 'hello!'], i => i)
//@[000:0046) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0011) | ├─IdentifierSyntax
//@[004:0011) | | └─Token(Identifier) |filter6|
//@[012:0013) | ├─Token(Assignment) |=|
//@[014:0046) | └─FunctionCallSyntax
//@[014:0020) |   ├─IdentifierSyntax
//@[014:0020) |   | └─Token(Identifier) |filter|
//@[020:0021) |   ├─Token(LeftParen) |(|
//@[021:0037) |   ├─FunctionArgumentSyntax
//@[021:0037) |   | └─ArraySyntax
//@[021:0022) |   |   ├─Token(LeftSquare) |[|
//@[022:0026) |   |   ├─ArrayItemSyntax
//@[022:0026) |   |   | └─BooleanLiteralSyntax
//@[022:0026) |   |   |   └─Token(TrueKeyword) |true|
//@[026:0027) |   |   ├─Token(Comma) |,|
//@[028:0036) |   |   ├─ArrayItemSyntax
//@[028:0036) |   |   | └─StringSyntax
//@[028:0036) |   |   |   └─Token(StringComplete) |'hello!'|
//@[036:0037) |   |   └─Token(RightSquare) |]|
//@[037:0038) |   ├─Token(Comma) |,|
//@[039:0045) |   ├─FunctionArgumentSyntax
//@[039:0045) |   | └─LambdaSyntax
//@[039:0040) |   |   ├─LocalVariableSyntax
//@[039:0040) |   |   | └─IdentifierSyntax
//@[039:0040) |   |   |   └─Token(Identifier) |i|
//@[041:0043) |   |   ├─Token(Arrow) |=>|
//@[044:0045) |   |   └─VariableAccessSyntax
//@[044:0045) |   |     └─IdentifierSyntax
//@[044:0045) |   |       └─Token(Identifier) |i|
//@[045:0046) |   └─Token(RightParen) |)|
//@[046:0048) ├─Token(NewLine) |\n\n|

var sort1 = sort('abc')
//@[000:0023) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0009) | ├─IdentifierSyntax
//@[004:0009) | | └─Token(Identifier) |sort1|
//@[010:0011) | ├─Token(Assignment) |=|
//@[012:0023) | └─FunctionCallSyntax
//@[012:0016) |   ├─IdentifierSyntax
//@[012:0016) |   | └─Token(Identifier) |sort|
//@[016:0017) |   ├─Token(LeftParen) |(|
//@[017:0022) |   ├─FunctionArgumentSyntax
//@[017:0022) |   | └─StringSyntax
//@[017:0022) |   |   └─Token(StringComplete) |'abc'|
//@[022:0023) |   └─Token(RightParen) |)|
//@[023:0024) ├─Token(NewLine) |\n|
var sort2 = sort('abc', 'def')
//@[000:0030) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0009) | ├─IdentifierSyntax
//@[004:0009) | | └─Token(Identifier) |sort2|
//@[010:0011) | ├─Token(Assignment) |=|
//@[012:0030) | └─FunctionCallSyntax
//@[012:0016) |   ├─IdentifierSyntax
//@[012:0016) |   | └─Token(Identifier) |sort|
//@[016:0017) |   ├─Token(LeftParen) |(|
//@[017:0022) |   ├─FunctionArgumentSyntax
//@[017:0022) |   | └─StringSyntax
//@[017:0022) |   |   └─Token(StringComplete) |'abc'|
//@[022:0023) |   ├─Token(Comma) |,|
//@[024:0029) |   ├─FunctionArgumentSyntax
//@[024:0029) |   | └─StringSyntax
//@[024:0029) |   |   └─Token(StringComplete) |'def'|
//@[029:0030) |   └─Token(RightParen) |)|
//@[030:0031) ├─Token(NewLine) |\n|
var sort3 = sort(range(0, 10), 'def')
//@[000:0037) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0009) | ├─IdentifierSyntax
//@[004:0009) | | └─Token(Identifier) |sort3|
//@[010:0011) | ├─Token(Assignment) |=|
//@[012:0037) | └─FunctionCallSyntax
//@[012:0016) |   ├─IdentifierSyntax
//@[012:0016) |   | └─Token(Identifier) |sort|
//@[016:0017) |   ├─Token(LeftParen) |(|
//@[017:0029) |   ├─FunctionArgumentSyntax
//@[017:0029) |   | └─FunctionCallSyntax
//@[017:0022) |   |   ├─IdentifierSyntax
//@[017:0022) |   |   | └─Token(Identifier) |range|
//@[022:0023) |   |   ├─Token(LeftParen) |(|
//@[023:0024) |   |   ├─FunctionArgumentSyntax
//@[023:0024) |   |   | └─IntegerLiteralSyntax
//@[023:0024) |   |   |   └─Token(Integer) |0|
//@[024:0025) |   |   ├─Token(Comma) |,|
//@[026:0028) |   |   ├─FunctionArgumentSyntax
//@[026:0028) |   |   | └─IntegerLiteralSyntax
//@[026:0028) |   |   |   └─Token(Integer) |10|
//@[028:0029) |   |   └─Token(RightParen) |)|
//@[029:0030) |   ├─Token(Comma) |,|
//@[031:0036) |   ├─FunctionArgumentSyntax
//@[031:0036) |   | └─StringSyntax
//@[031:0036) |   |   └─Token(StringComplete) |'def'|
//@[036:0037) |   └─Token(RightParen) |)|
//@[037:0038) ├─Token(NewLine) |\n|
var sort4 = sort(range(0, 10), () => null)
//@[000:0042) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0009) | ├─IdentifierSyntax
//@[004:0009) | | └─Token(Identifier) |sort4|
//@[010:0011) | ├─Token(Assignment) |=|
//@[012:0042) | └─FunctionCallSyntax
//@[012:0016) |   ├─IdentifierSyntax
//@[012:0016) |   | └─Token(Identifier) |sort|
//@[016:0017) |   ├─Token(LeftParen) |(|
//@[017:0029) |   ├─FunctionArgumentSyntax
//@[017:0029) |   | └─FunctionCallSyntax
//@[017:0022) |   |   ├─IdentifierSyntax
//@[017:0022) |   |   | └─Token(Identifier) |range|
//@[022:0023) |   |   ├─Token(LeftParen) |(|
//@[023:0024) |   |   ├─FunctionArgumentSyntax
//@[023:0024) |   |   | └─IntegerLiteralSyntax
//@[023:0024) |   |   |   └─Token(Integer) |0|
//@[024:0025) |   |   ├─Token(Comma) |,|
//@[026:0028) |   |   ├─FunctionArgumentSyntax
//@[026:0028) |   |   | └─IntegerLiteralSyntax
//@[026:0028) |   |   |   └─Token(Integer) |10|
//@[028:0029) |   |   └─Token(RightParen) |)|
//@[029:0030) |   ├─Token(Comma) |,|
//@[031:0041) |   ├─FunctionArgumentSyntax
//@[031:0041) |   | └─LambdaSyntax
//@[031:0033) |   |   ├─VariableBlockSyntax
//@[031:0032) |   |   | ├─Token(LeftParen) |(|
//@[032:0033) |   |   | └─Token(RightParen) |)|
//@[034:0036) |   |   ├─Token(Arrow) |=>|
//@[037:0041) |   |   └─NullLiteralSyntax
//@[037:0041) |   |     └─Token(NullKeyword) |null|
//@[041:0042) |   └─Token(RightParen) |)|
//@[042:0043) ├─Token(NewLine) |\n|
var sort5 = sort(range(0, 10), i => i)
//@[000:0038) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0009) | ├─IdentifierSyntax
//@[004:0009) | | └─Token(Identifier) |sort5|
//@[010:0011) | ├─Token(Assignment) |=|
//@[012:0038) | └─FunctionCallSyntax
//@[012:0016) |   ├─IdentifierSyntax
//@[012:0016) |   | └─Token(Identifier) |sort|
//@[016:0017) |   ├─Token(LeftParen) |(|
//@[017:0029) |   ├─FunctionArgumentSyntax
//@[017:0029) |   | └─FunctionCallSyntax
//@[017:0022) |   |   ├─IdentifierSyntax
//@[017:0022) |   |   | └─Token(Identifier) |range|
//@[022:0023) |   |   ├─Token(LeftParen) |(|
//@[023:0024) |   |   ├─FunctionArgumentSyntax
//@[023:0024) |   |   | └─IntegerLiteralSyntax
//@[023:0024) |   |   |   └─Token(Integer) |0|
//@[024:0025) |   |   ├─Token(Comma) |,|
//@[026:0028) |   |   ├─FunctionArgumentSyntax
//@[026:0028) |   |   | └─IntegerLiteralSyntax
//@[026:0028) |   |   |   └─Token(Integer) |10|
//@[028:0029) |   |   └─Token(RightParen) |)|
//@[029:0030) |   ├─Token(Comma) |,|
//@[031:0037) |   ├─FunctionArgumentSyntax
//@[031:0037) |   | └─LambdaSyntax
//@[031:0032) |   |   ├─LocalVariableSyntax
//@[031:0032) |   |   | └─IdentifierSyntax
//@[031:0032) |   |   |   └─Token(Identifier) |i|
//@[033:0035) |   |   ├─Token(Arrow) |=>|
//@[036:0037) |   |   └─VariableAccessSyntax
//@[036:0037) |   |     └─IdentifierSyntax
//@[036:0037) |   |       └─Token(Identifier) |i|
//@[037:0038) |   └─Token(RightParen) |)|
//@[038:0039) ├─Token(NewLine) |\n|
var sort6 = sort(range(0, 10), (i, j) => i)
//@[000:0043) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0009) | ├─IdentifierSyntax
//@[004:0009) | | └─Token(Identifier) |sort6|
//@[010:0011) | ├─Token(Assignment) |=|
//@[012:0043) | └─FunctionCallSyntax
//@[012:0016) |   ├─IdentifierSyntax
//@[012:0016) |   | └─Token(Identifier) |sort|
//@[016:0017) |   ├─Token(LeftParen) |(|
//@[017:0029) |   ├─FunctionArgumentSyntax
//@[017:0029) |   | └─FunctionCallSyntax
//@[017:0022) |   |   ├─IdentifierSyntax
//@[017:0022) |   |   | └─Token(Identifier) |range|
//@[022:0023) |   |   ├─Token(LeftParen) |(|
//@[023:0024) |   |   ├─FunctionArgumentSyntax
//@[023:0024) |   |   | └─IntegerLiteralSyntax
//@[023:0024) |   |   |   └─Token(Integer) |0|
//@[024:0025) |   |   ├─Token(Comma) |,|
//@[026:0028) |   |   ├─FunctionArgumentSyntax
//@[026:0028) |   |   | └─IntegerLiteralSyntax
//@[026:0028) |   |   |   └─Token(Integer) |10|
//@[028:0029) |   |   └─Token(RightParen) |)|
//@[029:0030) |   ├─Token(Comma) |,|
//@[031:0042) |   ├─FunctionArgumentSyntax
//@[031:0042) |   | └─LambdaSyntax
//@[031:0037) |   |   ├─VariableBlockSyntax
//@[031:0032) |   |   | ├─Token(LeftParen) |(|
//@[032:0033) |   |   | ├─LocalVariableSyntax
//@[032:0033) |   |   | | └─IdentifierSyntax
//@[032:0033) |   |   | |   └─Token(Identifier) |i|
//@[033:0034) |   |   | ├─Token(Comma) |,|
//@[035:0036) |   |   | ├─LocalVariableSyntax
//@[035:0036) |   |   | | └─IdentifierSyntax
//@[035:0036) |   |   | |   └─Token(Identifier) |j|
//@[036:0037) |   |   | └─Token(RightParen) |)|
//@[038:0040) |   |   ├─Token(Arrow) |=>|
//@[041:0042) |   |   └─VariableAccessSyntax
//@[041:0042) |   |     └─IdentifierSyntax
//@[041:0042) |   |       └─Token(Identifier) |i|
//@[042:0043) |   └─Token(RightParen) |)|
//@[043:0045) ├─Token(NewLine) |\n\n|

var reduce1 = reduce('abc')
//@[000:0027) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0011) | ├─IdentifierSyntax
//@[004:0011) | | └─Token(Identifier) |reduce1|
//@[012:0013) | ├─Token(Assignment) |=|
//@[014:0027) | └─FunctionCallSyntax
//@[014:0020) |   ├─IdentifierSyntax
//@[014:0020) |   | └─Token(Identifier) |reduce|
//@[020:0021) |   ├─Token(LeftParen) |(|
//@[021:0026) |   ├─FunctionArgumentSyntax
//@[021:0026) |   | └─StringSyntax
//@[021:0026) |   |   └─Token(StringComplete) |'abc'|
//@[026:0027) |   └─Token(RightParen) |)|
//@[027:0028) ├─Token(NewLine) |\n|
var reduce2 = reduce('abc', 'def', 'ghi')
//@[000:0041) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0011) | ├─IdentifierSyntax
//@[004:0011) | | └─Token(Identifier) |reduce2|
//@[012:0013) | ├─Token(Assignment) |=|
//@[014:0041) | └─FunctionCallSyntax
//@[014:0020) |   ├─IdentifierSyntax
//@[014:0020) |   | └─Token(Identifier) |reduce|
//@[020:0021) |   ├─Token(LeftParen) |(|
//@[021:0026) |   ├─FunctionArgumentSyntax
//@[021:0026) |   | └─StringSyntax
//@[021:0026) |   |   └─Token(StringComplete) |'abc'|
//@[026:0027) |   ├─Token(Comma) |,|
//@[028:0033) |   ├─FunctionArgumentSyntax
//@[028:0033) |   | └─StringSyntax
//@[028:0033) |   |   └─Token(StringComplete) |'def'|
//@[033:0034) |   ├─Token(Comma) |,|
//@[035:0040) |   ├─FunctionArgumentSyntax
//@[035:0040) |   | └─StringSyntax
//@[035:0040) |   |   └─Token(StringComplete) |'ghi'|
//@[040:0041) |   └─Token(RightParen) |)|
//@[041:0042) ├─Token(NewLine) |\n|
var reduce3 = reduce(range(0, 10), 0, 'def')
//@[000:0044) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0011) | ├─IdentifierSyntax
//@[004:0011) | | └─Token(Identifier) |reduce3|
//@[012:0013) | ├─Token(Assignment) |=|
//@[014:0044) | └─FunctionCallSyntax
//@[014:0020) |   ├─IdentifierSyntax
//@[014:0020) |   | └─Token(Identifier) |reduce|
//@[020:0021) |   ├─Token(LeftParen) |(|
//@[021:0033) |   ├─FunctionArgumentSyntax
//@[021:0033) |   | └─FunctionCallSyntax
//@[021:0026) |   |   ├─IdentifierSyntax
//@[021:0026) |   |   | └─Token(Identifier) |range|
//@[026:0027) |   |   ├─Token(LeftParen) |(|
//@[027:0028) |   |   ├─FunctionArgumentSyntax
//@[027:0028) |   |   | └─IntegerLiteralSyntax
//@[027:0028) |   |   |   └─Token(Integer) |0|
//@[028:0029) |   |   ├─Token(Comma) |,|
//@[030:0032) |   |   ├─FunctionArgumentSyntax
//@[030:0032) |   |   | └─IntegerLiteralSyntax
//@[030:0032) |   |   |   └─Token(Integer) |10|
//@[032:0033) |   |   └─Token(RightParen) |)|
//@[033:0034) |   ├─Token(Comma) |,|
//@[035:0036) |   ├─FunctionArgumentSyntax
//@[035:0036) |   | └─IntegerLiteralSyntax
//@[035:0036) |   |   └─Token(Integer) |0|
//@[036:0037) |   ├─Token(Comma) |,|
//@[038:0043) |   ├─FunctionArgumentSyntax
//@[038:0043) |   | └─StringSyntax
//@[038:0043) |   |   └─Token(StringComplete) |'def'|
//@[043:0044) |   └─Token(RightParen) |)|
//@[044:0045) ├─Token(NewLine) |\n|
var reduce4 = reduce(range(0, 10), 0, () => null)
//@[000:0049) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0011) | ├─IdentifierSyntax
//@[004:0011) | | └─Token(Identifier) |reduce4|
//@[012:0013) | ├─Token(Assignment) |=|
//@[014:0049) | └─FunctionCallSyntax
//@[014:0020) |   ├─IdentifierSyntax
//@[014:0020) |   | └─Token(Identifier) |reduce|
//@[020:0021) |   ├─Token(LeftParen) |(|
//@[021:0033) |   ├─FunctionArgumentSyntax
//@[021:0033) |   | └─FunctionCallSyntax
//@[021:0026) |   |   ├─IdentifierSyntax
//@[021:0026) |   |   | └─Token(Identifier) |range|
//@[026:0027) |   |   ├─Token(LeftParen) |(|
//@[027:0028) |   |   ├─FunctionArgumentSyntax
//@[027:0028) |   |   | └─IntegerLiteralSyntax
//@[027:0028) |   |   |   └─Token(Integer) |0|
//@[028:0029) |   |   ├─Token(Comma) |,|
//@[030:0032) |   |   ├─FunctionArgumentSyntax
//@[030:0032) |   |   | └─IntegerLiteralSyntax
//@[030:0032) |   |   |   └─Token(Integer) |10|
//@[032:0033) |   |   └─Token(RightParen) |)|
//@[033:0034) |   ├─Token(Comma) |,|
//@[035:0036) |   ├─FunctionArgumentSyntax
//@[035:0036) |   | └─IntegerLiteralSyntax
//@[035:0036) |   |   └─Token(Integer) |0|
//@[036:0037) |   ├─Token(Comma) |,|
//@[038:0048) |   ├─FunctionArgumentSyntax
//@[038:0048) |   | └─LambdaSyntax
//@[038:0040) |   |   ├─VariableBlockSyntax
//@[038:0039) |   |   | ├─Token(LeftParen) |(|
//@[039:0040) |   |   | └─Token(RightParen) |)|
//@[041:0043) |   |   ├─Token(Arrow) |=>|
//@[044:0048) |   |   └─NullLiteralSyntax
//@[044:0048) |   |     └─Token(NullKeyword) |null|
//@[048:0049) |   └─Token(RightParen) |)|
//@[049:0050) ├─Token(NewLine) |\n|
var reduce5 = reduce(range(0, 10), 0, i => i)
//@[000:0045) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0011) | ├─IdentifierSyntax
//@[004:0011) | | └─Token(Identifier) |reduce5|
//@[012:0013) | ├─Token(Assignment) |=|
//@[014:0045) | └─FunctionCallSyntax
//@[014:0020) |   ├─IdentifierSyntax
//@[014:0020) |   | └─Token(Identifier) |reduce|
//@[020:0021) |   ├─Token(LeftParen) |(|
//@[021:0033) |   ├─FunctionArgumentSyntax
//@[021:0033) |   | └─FunctionCallSyntax
//@[021:0026) |   |   ├─IdentifierSyntax
//@[021:0026) |   |   | └─Token(Identifier) |range|
//@[026:0027) |   |   ├─Token(LeftParen) |(|
//@[027:0028) |   |   ├─FunctionArgumentSyntax
//@[027:0028) |   |   | └─IntegerLiteralSyntax
//@[027:0028) |   |   |   └─Token(Integer) |0|
//@[028:0029) |   |   ├─Token(Comma) |,|
//@[030:0032) |   |   ├─FunctionArgumentSyntax
//@[030:0032) |   |   | └─IntegerLiteralSyntax
//@[030:0032) |   |   |   └─Token(Integer) |10|
//@[032:0033) |   |   └─Token(RightParen) |)|
//@[033:0034) |   ├─Token(Comma) |,|
//@[035:0036) |   ├─FunctionArgumentSyntax
//@[035:0036) |   | └─IntegerLiteralSyntax
//@[035:0036) |   |   └─Token(Integer) |0|
//@[036:0037) |   ├─Token(Comma) |,|
//@[038:0044) |   ├─FunctionArgumentSyntax
//@[038:0044) |   | └─LambdaSyntax
//@[038:0039) |   |   ├─LocalVariableSyntax
//@[038:0039) |   |   | └─IdentifierSyntax
//@[038:0039) |   |   |   └─Token(Identifier) |i|
//@[040:0042) |   |   ├─Token(Arrow) |=>|
//@[043:0044) |   |   └─VariableAccessSyntax
//@[043:0044) |   |     └─IdentifierSyntax
//@[043:0044) |   |       └─Token(Identifier) |i|
//@[044:0045) |   └─Token(RightParen) |)|
//@[045:0047) ├─Token(NewLine) |\n\n|

var ternary = map([123], true ? i => '${i}' : i => 'hello!')
//@[000:0060) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0011) | ├─IdentifierSyntax
//@[004:0011) | | └─Token(Identifier) |ternary|
//@[012:0013) | ├─Token(Assignment) |=|
//@[014:0060) | └─FunctionCallSyntax
//@[014:0017) |   ├─IdentifierSyntax
//@[014:0017) |   | └─Token(Identifier) |map|
//@[017:0018) |   ├─Token(LeftParen) |(|
//@[018:0023) |   ├─FunctionArgumentSyntax
//@[018:0023) |   | └─ArraySyntax
//@[018:0019) |   |   ├─Token(LeftSquare) |[|
//@[019:0022) |   |   ├─ArrayItemSyntax
//@[019:0022) |   |   | └─IntegerLiteralSyntax
//@[019:0022) |   |   |   └─Token(Integer) |123|
//@[022:0023) |   |   └─Token(RightSquare) |]|
//@[023:0024) |   ├─Token(Comma) |,|
//@[025:0059) |   ├─FunctionArgumentSyntax
//@[025:0059) |   | └─TernaryOperationSyntax
//@[025:0029) |   |   ├─BooleanLiteralSyntax
//@[025:0029) |   |   | └─Token(TrueKeyword) |true|
//@[030:0031) |   |   ├─Token(Question) |?|
//@[032:0043) |   |   ├─LambdaSyntax
//@[032:0033) |   |   | ├─LocalVariableSyntax
//@[032:0033) |   |   | | └─IdentifierSyntax
//@[032:0033) |   |   | |   └─Token(Identifier) |i|
//@[034:0036) |   |   | ├─Token(Arrow) |=>|
//@[037:0043) |   |   | └─StringSyntax
//@[037:0040) |   |   |   ├─Token(StringLeftPiece) |'${|
//@[040:0041) |   |   |   ├─VariableAccessSyntax
//@[040:0041) |   |   |   | └─IdentifierSyntax
//@[040:0041) |   |   |   |   └─Token(Identifier) |i|
//@[041:0043) |   |   |   └─Token(StringRightPiece) |}'|
//@[044:0045) |   |   ├─Token(Colon) |:|
//@[046:0059) |   |   └─LambdaSyntax
//@[046:0047) |   |     ├─LocalVariableSyntax
//@[046:0047) |   |     | └─IdentifierSyntax
//@[046:0047) |   |     |   └─Token(Identifier) |i|
//@[048:0050) |   |     ├─Token(Arrow) |=>|
//@[051:0059) |   |     └─StringSyntax
//@[051:0059) |   |       └─Token(StringComplete) |'hello!'|
//@[059:0060) |   └─Token(RightParen) |)|
//@[060:0062) ├─Token(NewLine) |\n\n|

var outsideArgs = i => 123
//@[000:0026) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0015) | ├─IdentifierSyntax
//@[004:0015) | | └─Token(Identifier) |outsideArgs|
//@[016:0017) | ├─Token(Assignment) |=|
//@[018:0026) | └─LambdaSyntax
//@[018:0019) |   ├─LocalVariableSyntax
//@[018:0019) |   | └─IdentifierSyntax
//@[018:0019) |   |   └─Token(Identifier) |i|
//@[020:0022) |   ├─Token(Arrow) |=>|
//@[023:0026) |   └─IntegerLiteralSyntax
//@[023:0026) |     └─Token(Integer) |123|
//@[026:0027) ├─Token(NewLine) |\n|
var outsideArgs2 = (x, y, z) => '${x}${y}${z}'
//@[000:0046) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0016) | ├─IdentifierSyntax
//@[004:0016) | | └─Token(Identifier) |outsideArgs2|
//@[017:0018) | ├─Token(Assignment) |=|
//@[019:0046) | └─LambdaSyntax
//@[019:0028) |   ├─VariableBlockSyntax
//@[019:0020) |   | ├─Token(LeftParen) |(|
//@[020:0021) |   | ├─LocalVariableSyntax
//@[020:0021) |   | | └─IdentifierSyntax
//@[020:0021) |   | |   └─Token(Identifier) |x|
//@[021:0022) |   | ├─Token(Comma) |,|
//@[023:0024) |   | ├─LocalVariableSyntax
//@[023:0024) |   | | └─IdentifierSyntax
//@[023:0024) |   | |   └─Token(Identifier) |y|
//@[024:0025) |   | ├─Token(Comma) |,|
//@[026:0027) |   | ├─LocalVariableSyntax
//@[026:0027) |   | | └─IdentifierSyntax
//@[026:0027) |   | |   └─Token(Identifier) |z|
//@[027:0028) |   | └─Token(RightParen) |)|
//@[029:0031) |   ├─Token(Arrow) |=>|
//@[032:0046) |   └─StringSyntax
//@[032:0035) |     ├─Token(StringLeftPiece) |'${|
//@[035:0036) |     ├─VariableAccessSyntax
//@[035:0036) |     | └─IdentifierSyntax
//@[035:0036) |     |   └─Token(Identifier) |x|
//@[036:0039) |     ├─Token(StringMiddlePiece) |}${|
//@[039:0040) |     ├─VariableAccessSyntax
//@[039:0040) |     | └─IdentifierSyntax
//@[039:0040) |     |   └─Token(Identifier) |y|
//@[040:0043) |     ├─Token(StringMiddlePiece) |}${|
//@[043:0044) |     ├─VariableAccessSyntax
//@[043:0044) |     | └─IdentifierSyntax
//@[043:0044) |     |   └─Token(Identifier) |z|
//@[044:0046) |     └─Token(StringRightPiece) |}'|
//@[046:0047) ├─Token(NewLine) |\n|
var partial = i =>
//@[000:0018) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0011) | ├─IdentifierSyntax
//@[004:0011) | | └─Token(Identifier) |partial|
//@[012:0013) | ├─Token(Assignment) |=|
//@[014:0018) | └─LambdaSyntax
//@[014:0015) |   ├─LocalVariableSyntax
//@[014:0015) |   | └─IdentifierSyntax
//@[014:0015) |   |   └─Token(Identifier) |i|
//@[016:0018) |   ├─Token(Arrow) |=>|
//@[018:0018) |   └─SkippedTriviaSyntax
//@[018:0021) ├─Token(NewLine) |\n\n\n|


var inObject = {
//@[000:0030) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0012) | ├─IdentifierSyntax
//@[004:0012) | | └─Token(Identifier) |inObject|
//@[013:0014) | ├─Token(Assignment) |=|
//@[015:0030) | └─ObjectSyntax
//@[015:0016) |   ├─Token(LeftBrace) |{|
//@[016:0017) |   ├─Token(NewLine) |\n|
  a: i => i
//@[002:0011) |   ├─ObjectPropertySyntax
//@[002:0003) |   | ├─IdentifierSyntax
//@[002:0003) |   | | └─Token(Identifier) |a|
//@[003:0004) |   | ├─Token(Colon) |:|
//@[005:0011) |   | └─LambdaSyntax
//@[005:0006) |   |   ├─LocalVariableSyntax
//@[005:0006) |   |   | └─IdentifierSyntax
//@[005:0006) |   |   |   └─Token(Identifier) |i|
//@[007:0009) |   |   ├─Token(Arrow) |=>|
//@[010:0011) |   |   └─VariableAccessSyntax
//@[010:0011) |   |     └─IdentifierSyntax
//@[010:0011) |   |       └─Token(Identifier) |i|
//@[011:0012) |   ├─Token(NewLine) |\n|
}
//@[000:0001) |   └─Token(RightBrace) |}|
//@[001:0003) ├─Token(NewLine) |\n\n|

var inArray = [
//@[000:0035) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0011) | ├─IdentifierSyntax
//@[004:0011) | | └─Token(Identifier) |inArray|
//@[012:0013) | ├─Token(Assignment) |=|
//@[014:0035) | └─ArraySyntax
//@[014:0015) |   ├─Token(LeftSquare) |[|
//@[015:0016) |   ├─Token(NewLine) |\n|
  i => i
//@[002:0008) |   ├─ArrayItemSyntax
//@[002:0008) |   | └─LambdaSyntax
//@[002:0003) |   |   ├─LocalVariableSyntax
//@[002:0003) |   |   | └─IdentifierSyntax
//@[002:0003) |   |   |   └─Token(Identifier) |i|
//@[004:0006) |   |   ├─Token(Arrow) |=>|
//@[007:0008) |   |   └─VariableAccessSyntax
//@[007:0008) |   |     └─IdentifierSyntax
//@[007:0008) |   |       └─Token(Identifier) |i|
//@[008:0009) |   ├─Token(NewLine) |\n|
  j => j
//@[002:0008) |   ├─ArrayItemSyntax
//@[002:0008) |   | └─LambdaSyntax
//@[002:0003) |   |   ├─LocalVariableSyntax
//@[002:0003) |   |   | └─IdentifierSyntax
//@[002:0003) |   |   |   └─Token(Identifier) |j|
//@[004:0006) |   |   ├─Token(Arrow) |=>|
//@[007:0008) |   |   └─VariableAccessSyntax
//@[007:0008) |   |     └─IdentifierSyntax
//@[007:0008) |   |       └─Token(Identifier) |j|
//@[008:0009) |   ├─Token(NewLine) |\n|
]
//@[000:0001) |   └─Token(RightSquare) |]|
//@[001:0003) ├─Token(NewLine) |\n\n|

resource resLoop 'Microsoft.Storage/storageAccounts@2021-09-01' existing = [for item in range(0, 5): {
//@[000:0126) ├─ResourceDeclarationSyntax
//@[000:0008) | ├─Token(Identifier) |resource|
//@[009:0016) | ├─IdentifierSyntax
//@[009:0016) | | └─Token(Identifier) |resLoop|
//@[017:0063) | ├─StringSyntax
//@[017:0063) | | └─Token(StringComplete) |'Microsoft.Storage/storageAccounts@2021-09-01'|
//@[064:0072) | ├─Token(Identifier) |existing|
//@[073:0074) | ├─Token(Assignment) |=|
//@[075:0126) | └─ForSyntax
//@[075:0076) |   ├─Token(LeftSquare) |[|
//@[076:0079) |   ├─Token(Identifier) |for|
//@[080:0084) |   ├─LocalVariableSyntax
//@[080:0084) |   | └─IdentifierSyntax
//@[080:0084) |   |   └─Token(Identifier) |item|
//@[085:0087) |   ├─Token(Identifier) |in|
//@[088:0099) |   ├─FunctionCallSyntax
//@[088:0093) |   | ├─IdentifierSyntax
//@[088:0093) |   | | └─Token(Identifier) |range|
//@[093:0094) |   | ├─Token(LeftParen) |(|
//@[094:0095) |   | ├─FunctionArgumentSyntax
//@[094:0095) |   | | └─IntegerLiteralSyntax
//@[094:0095) |   | |   └─Token(Integer) |0|
//@[095:0096) |   | ├─Token(Comma) |,|
//@[097:0098) |   | ├─FunctionArgumentSyntax
//@[097:0098) |   | | └─IntegerLiteralSyntax
//@[097:0098) |   | |   └─Token(Integer) |5|
//@[098:0099) |   | └─Token(RightParen) |)|
//@[099:0100) |   ├─Token(Colon) |:|
//@[101:0125) |   ├─ObjectSyntax
//@[101:0102) |   | ├─Token(LeftBrace) |{|
//@[102:0103) |   | ├─Token(NewLine) |\n|
  name: 'foo${item}'
//@[002:0020) |   | ├─ObjectPropertySyntax
//@[002:0006) |   | | ├─IdentifierSyntax
//@[002:0006) |   | | | └─Token(Identifier) |name|
//@[006:0007) |   | | ├─Token(Colon) |:|
//@[008:0020) |   | | └─StringSyntax
//@[008:0014) |   | |   ├─Token(StringLeftPiece) |'foo${|
//@[014:0018) |   | |   ├─VariableAccessSyntax
//@[014:0018) |   | |   | └─IdentifierSyntax
//@[014:0018) |   | |   |   └─Token(Identifier) |item|
//@[018:0020) |   | |   └─Token(StringRightPiece) |}'|
//@[020:0021) |   | ├─Token(NewLine) |\n|
}]
//@[000:0001) |   | └─Token(RightBrace) |}|
//@[001:0002) |   └─Token(RightSquare) |]|
//@[002:0004) ├─Token(NewLine) |\n\n|

var resLoopNames = map(resLoop, i => i.name)
//@[000:0044) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0016) | ├─IdentifierSyntax
//@[004:0016) | | └─Token(Identifier) |resLoopNames|
//@[017:0018) | ├─Token(Assignment) |=|
//@[019:0044) | └─FunctionCallSyntax
//@[019:0022) |   ├─IdentifierSyntax
//@[019:0022) |   | └─Token(Identifier) |map|
//@[022:0023) |   ├─Token(LeftParen) |(|
//@[023:0030) |   ├─FunctionArgumentSyntax
//@[023:0030) |   | └─VariableAccessSyntax
//@[023:0030) |   |   └─IdentifierSyntax
//@[023:0030) |   |     └─Token(Identifier) |resLoop|
//@[030:0031) |   ├─Token(Comma) |,|
//@[032:0043) |   ├─FunctionArgumentSyntax
//@[032:0043) |   | └─LambdaSyntax
//@[032:0033) |   |   ├─LocalVariableSyntax
//@[032:0033) |   |   | └─IdentifierSyntax
//@[032:0033) |   |   |   └─Token(Identifier) |i|
//@[034:0036) |   |   ├─Token(Arrow) |=>|
//@[037:0043) |   |   └─PropertyAccessSyntax
//@[037:0038) |   |     ├─VariableAccessSyntax
//@[037:0038) |   |     | └─IdentifierSyntax
//@[037:0038) |   |     |   └─Token(Identifier) |i|
//@[038:0039) |   |     ├─Token(Dot) |.|
//@[039:0043) |   |     └─IdentifierSyntax
//@[039:0043) |   |       └─Token(Identifier) |name|
//@[043:0044) |   └─Token(RightParen) |)|
//@[044:0045) ├─Token(NewLine) |\n|
output stgKeys array = map(range(0, 5), i => resLoop[i].listKeys().keys[0].value)
//@[000:0081) ├─OutputDeclarationSyntax
//@[000:0006) | ├─Token(Identifier) |output|
//@[007:0014) | ├─IdentifierSyntax
//@[007:0014) | | └─Token(Identifier) |stgKeys|
//@[015:0020) | ├─SimpleTypeSyntax
//@[015:0020) | | └─Token(Identifier) |array|
//@[021:0022) | ├─Token(Assignment) |=|
//@[023:0081) | └─FunctionCallSyntax
//@[023:0026) |   ├─IdentifierSyntax
//@[023:0026) |   | └─Token(Identifier) |map|
//@[026:0027) |   ├─Token(LeftParen) |(|
//@[027:0038) |   ├─FunctionArgumentSyntax
//@[027:0038) |   | └─FunctionCallSyntax
//@[027:0032) |   |   ├─IdentifierSyntax
//@[027:0032) |   |   | └─Token(Identifier) |range|
//@[032:0033) |   |   ├─Token(LeftParen) |(|
//@[033:0034) |   |   ├─FunctionArgumentSyntax
//@[033:0034) |   |   | └─IntegerLiteralSyntax
//@[033:0034) |   |   |   └─Token(Integer) |0|
//@[034:0035) |   |   ├─Token(Comma) |,|
//@[036:0037) |   |   ├─FunctionArgumentSyntax
//@[036:0037) |   |   | └─IntegerLiteralSyntax
//@[036:0037) |   |   |   └─Token(Integer) |5|
//@[037:0038) |   |   └─Token(RightParen) |)|
//@[038:0039) |   ├─Token(Comma) |,|
//@[040:0080) |   ├─FunctionArgumentSyntax
//@[040:0080) |   | └─LambdaSyntax
//@[040:0041) |   |   ├─LocalVariableSyntax
//@[040:0041) |   |   | └─IdentifierSyntax
//@[040:0041) |   |   |   └─Token(Identifier) |i|
//@[042:0044) |   |   ├─Token(Arrow) |=>|
//@[045:0080) |   |   └─PropertyAccessSyntax
//@[045:0074) |   |     ├─ArrayAccessSyntax
//@[045:0071) |   |     | ├─PropertyAccessSyntax
//@[045:0066) |   |     | | ├─InstanceFunctionCallSyntax
//@[045:0055) |   |     | | | ├─ArrayAccessSyntax
//@[045:0052) |   |     | | | | ├─VariableAccessSyntax
//@[045:0052) |   |     | | | | | └─IdentifierSyntax
//@[045:0052) |   |     | | | | |   └─Token(Identifier) |resLoop|
//@[052:0053) |   |     | | | | ├─Token(LeftSquare) |[|
//@[053:0054) |   |     | | | | ├─VariableAccessSyntax
//@[053:0054) |   |     | | | | | └─IdentifierSyntax
//@[053:0054) |   |     | | | | |   └─Token(Identifier) |i|
//@[054:0055) |   |     | | | | └─Token(RightSquare) |]|
//@[055:0056) |   |     | | | ├─Token(Dot) |.|
//@[056:0064) |   |     | | | ├─IdentifierSyntax
//@[056:0064) |   |     | | | | └─Token(Identifier) |listKeys|
//@[064:0065) |   |     | | | ├─Token(LeftParen) |(|
//@[065:0066) |   |     | | | └─Token(RightParen) |)|
//@[066:0067) |   |     | | ├─Token(Dot) |.|
//@[067:0071) |   |     | | └─IdentifierSyntax
//@[067:0071) |   |     | |   └─Token(Identifier) |keys|
//@[071:0072) |   |     | ├─Token(LeftSquare) |[|
//@[072:0073) |   |     | ├─IntegerLiteralSyntax
//@[072:0073) |   |     | | └─Token(Integer) |0|
//@[073:0074) |   |     | └─Token(RightSquare) |]|
//@[074:0075) |   |     ├─Token(Dot) |.|
//@[075:0080) |   |     └─IdentifierSyntax
//@[075:0080) |   |       └─Token(Identifier) |value|
//@[080:0081) |   └─Token(RightParen) |)|
//@[081:0082) ├─Token(NewLine) |\n|
output stgKeys2 array = map(range(0, 5), j => resLoop[((j + 2) % 123)].listKeys().keys[0].value)
//@[000:0096) ├─OutputDeclarationSyntax
//@[000:0006) | ├─Token(Identifier) |output|
//@[007:0015) | ├─IdentifierSyntax
//@[007:0015) | | └─Token(Identifier) |stgKeys2|
//@[016:0021) | ├─SimpleTypeSyntax
//@[016:0021) | | └─Token(Identifier) |array|
//@[022:0023) | ├─Token(Assignment) |=|
//@[024:0096) | └─FunctionCallSyntax
//@[024:0027) |   ├─IdentifierSyntax
//@[024:0027) |   | └─Token(Identifier) |map|
//@[027:0028) |   ├─Token(LeftParen) |(|
//@[028:0039) |   ├─FunctionArgumentSyntax
//@[028:0039) |   | └─FunctionCallSyntax
//@[028:0033) |   |   ├─IdentifierSyntax
//@[028:0033) |   |   | └─Token(Identifier) |range|
//@[033:0034) |   |   ├─Token(LeftParen) |(|
//@[034:0035) |   |   ├─FunctionArgumentSyntax
//@[034:0035) |   |   | └─IntegerLiteralSyntax
//@[034:0035) |   |   |   └─Token(Integer) |0|
//@[035:0036) |   |   ├─Token(Comma) |,|
//@[037:0038) |   |   ├─FunctionArgumentSyntax
//@[037:0038) |   |   | └─IntegerLiteralSyntax
//@[037:0038) |   |   |   └─Token(Integer) |5|
//@[038:0039) |   |   └─Token(RightParen) |)|
//@[039:0040) |   ├─Token(Comma) |,|
//@[041:0095) |   ├─FunctionArgumentSyntax
//@[041:0095) |   | └─LambdaSyntax
//@[041:0042) |   |   ├─LocalVariableSyntax
//@[041:0042) |   |   | └─IdentifierSyntax
//@[041:0042) |   |   |   └─Token(Identifier) |j|
//@[043:0045) |   |   ├─Token(Arrow) |=>|
//@[046:0095) |   |   └─PropertyAccessSyntax
//@[046:0089) |   |     ├─ArrayAccessSyntax
//@[046:0086) |   |     | ├─PropertyAccessSyntax
//@[046:0081) |   |     | | ├─InstanceFunctionCallSyntax
//@[046:0070) |   |     | | | ├─ArrayAccessSyntax
//@[046:0053) |   |     | | | | ├─VariableAccessSyntax
//@[046:0053) |   |     | | | | | └─IdentifierSyntax
//@[046:0053) |   |     | | | | |   └─Token(Identifier) |resLoop|
//@[053:0054) |   |     | | | | ├─Token(LeftSquare) |[|
//@[054:0069) |   |     | | | | ├─ParenthesizedExpressionSyntax
//@[054:0055) |   |     | | | | | ├─Token(LeftParen) |(|
//@[055:0068) |   |     | | | | | ├─BinaryOperationSyntax
//@[055:0062) |   |     | | | | | | ├─ParenthesizedExpressionSyntax
//@[055:0056) |   |     | | | | | | | ├─Token(LeftParen) |(|
//@[056:0061) |   |     | | | | | | | ├─BinaryOperationSyntax
//@[056:0057) |   |     | | | | | | | | ├─VariableAccessSyntax
//@[056:0057) |   |     | | | | | | | | | └─IdentifierSyntax
//@[056:0057) |   |     | | | | | | | | |   └─Token(Identifier) |j|
//@[058:0059) |   |     | | | | | | | | ├─Token(Plus) |+|
//@[060:0061) |   |     | | | | | | | | └─IntegerLiteralSyntax
//@[060:0061) |   |     | | | | | | | |   └─Token(Integer) |2|
//@[061:0062) |   |     | | | | | | | └─Token(RightParen) |)|
//@[063:0064) |   |     | | | | | | ├─Token(Modulo) |%|
//@[065:0068) |   |     | | | | | | └─IntegerLiteralSyntax
//@[065:0068) |   |     | | | | | |   └─Token(Integer) |123|
//@[068:0069) |   |     | | | | | └─Token(RightParen) |)|
//@[069:0070) |   |     | | | | └─Token(RightSquare) |]|
//@[070:0071) |   |     | | | ├─Token(Dot) |.|
//@[071:0079) |   |     | | | ├─IdentifierSyntax
//@[071:0079) |   |     | | | | └─Token(Identifier) |listKeys|
//@[079:0080) |   |     | | | ├─Token(LeftParen) |(|
//@[080:0081) |   |     | | | └─Token(RightParen) |)|
//@[081:0082) |   |     | | ├─Token(Dot) |.|
//@[082:0086) |   |     | | └─IdentifierSyntax
//@[082:0086) |   |     | |   └─Token(Identifier) |keys|
//@[086:0087) |   |     | ├─Token(LeftSquare) |[|
//@[087:0088) |   |     | ├─IntegerLiteralSyntax
//@[087:0088) |   |     | | └─Token(Integer) |0|
//@[088:0089) |   |     | └─Token(RightSquare) |]|
//@[089:0090) |   |     ├─Token(Dot) |.|
//@[090:0095) |   |     └─IdentifierSyntax
//@[090:0095) |   |       └─Token(Identifier) |value|
//@[095:0096) |   └─Token(RightParen) |)|
//@[096:0097) ├─Token(NewLine) |\n|
output accessTiers array = map(range(0, 5), k => resLoop[k].properties.accessTier)
//@[000:0082) ├─OutputDeclarationSyntax
//@[000:0006) | ├─Token(Identifier) |output|
//@[007:0018) | ├─IdentifierSyntax
//@[007:0018) | | └─Token(Identifier) |accessTiers|
//@[019:0024) | ├─SimpleTypeSyntax
//@[019:0024) | | └─Token(Identifier) |array|
//@[025:0026) | ├─Token(Assignment) |=|
//@[027:0082) | └─FunctionCallSyntax
//@[027:0030) |   ├─IdentifierSyntax
//@[027:0030) |   | └─Token(Identifier) |map|
//@[030:0031) |   ├─Token(LeftParen) |(|
//@[031:0042) |   ├─FunctionArgumentSyntax
//@[031:0042) |   | └─FunctionCallSyntax
//@[031:0036) |   |   ├─IdentifierSyntax
//@[031:0036) |   |   | └─Token(Identifier) |range|
//@[036:0037) |   |   ├─Token(LeftParen) |(|
//@[037:0038) |   |   ├─FunctionArgumentSyntax
//@[037:0038) |   |   | └─IntegerLiteralSyntax
//@[037:0038) |   |   |   └─Token(Integer) |0|
//@[038:0039) |   |   ├─Token(Comma) |,|
//@[040:0041) |   |   ├─FunctionArgumentSyntax
//@[040:0041) |   |   | └─IntegerLiteralSyntax
//@[040:0041) |   |   |   └─Token(Integer) |5|
//@[041:0042) |   |   └─Token(RightParen) |)|
//@[042:0043) |   ├─Token(Comma) |,|
//@[044:0081) |   ├─FunctionArgumentSyntax
//@[044:0081) |   | └─LambdaSyntax
//@[044:0045) |   |   ├─LocalVariableSyntax
//@[044:0045) |   |   | └─IdentifierSyntax
//@[044:0045) |   |   |   └─Token(Identifier) |k|
//@[046:0048) |   |   ├─Token(Arrow) |=>|
//@[049:0081) |   |   └─PropertyAccessSyntax
//@[049:0070) |   |     ├─PropertyAccessSyntax
//@[049:0059) |   |     | ├─ArrayAccessSyntax
//@[049:0056) |   |     | | ├─VariableAccessSyntax
//@[049:0056) |   |     | | | └─IdentifierSyntax
//@[049:0056) |   |     | | |   └─Token(Identifier) |resLoop|
//@[056:0057) |   |     | | ├─Token(LeftSquare) |[|
//@[057:0058) |   |     | | ├─VariableAccessSyntax
//@[057:0058) |   |     | | | └─IdentifierSyntax
//@[057:0058) |   |     | | |   └─Token(Identifier) |k|
//@[058:0059) |   |     | | └─Token(RightSquare) |]|
//@[059:0060) |   |     | ├─Token(Dot) |.|
//@[060:0070) |   |     | └─IdentifierSyntax
//@[060:0070) |   |     |   └─Token(Identifier) |properties|
//@[070:0071) |   |     ├─Token(Dot) |.|
//@[071:0081) |   |     └─IdentifierSyntax
//@[071:0081) |   |       └─Token(Identifier) |accessTier|
//@[081:0082) |   └─Token(RightParen) |)|
//@[082:0083) ├─Token(NewLine) |\n|
output accessTiers2 array = map(range(0, 5), x => map(range(0, 2), y => resLoop[x / y].properties.accessTier))
//@[000:0110) ├─OutputDeclarationSyntax
//@[000:0006) | ├─Token(Identifier) |output|
//@[007:0019) | ├─IdentifierSyntax
//@[007:0019) | | └─Token(Identifier) |accessTiers2|
//@[020:0025) | ├─SimpleTypeSyntax
//@[020:0025) | | └─Token(Identifier) |array|
//@[026:0027) | ├─Token(Assignment) |=|
//@[028:0110) | └─FunctionCallSyntax
//@[028:0031) |   ├─IdentifierSyntax
//@[028:0031) |   | └─Token(Identifier) |map|
//@[031:0032) |   ├─Token(LeftParen) |(|
//@[032:0043) |   ├─FunctionArgumentSyntax
//@[032:0043) |   | └─FunctionCallSyntax
//@[032:0037) |   |   ├─IdentifierSyntax
//@[032:0037) |   |   | └─Token(Identifier) |range|
//@[037:0038) |   |   ├─Token(LeftParen) |(|
//@[038:0039) |   |   ├─FunctionArgumentSyntax
//@[038:0039) |   |   | └─IntegerLiteralSyntax
//@[038:0039) |   |   |   └─Token(Integer) |0|
//@[039:0040) |   |   ├─Token(Comma) |,|
//@[041:0042) |   |   ├─FunctionArgumentSyntax
//@[041:0042) |   |   | └─IntegerLiteralSyntax
//@[041:0042) |   |   |   └─Token(Integer) |5|
//@[042:0043) |   |   └─Token(RightParen) |)|
//@[043:0044) |   ├─Token(Comma) |,|
//@[045:0109) |   ├─FunctionArgumentSyntax
//@[045:0109) |   | └─LambdaSyntax
//@[045:0046) |   |   ├─LocalVariableSyntax
//@[045:0046) |   |   | └─IdentifierSyntax
//@[045:0046) |   |   |   └─Token(Identifier) |x|
//@[047:0049) |   |   ├─Token(Arrow) |=>|
//@[050:0109) |   |   └─FunctionCallSyntax
//@[050:0053) |   |     ├─IdentifierSyntax
//@[050:0053) |   |     | └─Token(Identifier) |map|
//@[053:0054) |   |     ├─Token(LeftParen) |(|
//@[054:0065) |   |     ├─FunctionArgumentSyntax
//@[054:0065) |   |     | └─FunctionCallSyntax
//@[054:0059) |   |     |   ├─IdentifierSyntax
//@[054:0059) |   |     |   | └─Token(Identifier) |range|
//@[059:0060) |   |     |   ├─Token(LeftParen) |(|
//@[060:0061) |   |     |   ├─FunctionArgumentSyntax
//@[060:0061) |   |     |   | └─IntegerLiteralSyntax
//@[060:0061) |   |     |   |   └─Token(Integer) |0|
//@[061:0062) |   |     |   ├─Token(Comma) |,|
//@[063:0064) |   |     |   ├─FunctionArgumentSyntax
//@[063:0064) |   |     |   | └─IntegerLiteralSyntax
//@[063:0064) |   |     |   |   └─Token(Integer) |2|
//@[064:0065) |   |     |   └─Token(RightParen) |)|
//@[065:0066) |   |     ├─Token(Comma) |,|
//@[067:0108) |   |     ├─FunctionArgumentSyntax
//@[067:0108) |   |     | └─LambdaSyntax
//@[067:0068) |   |     |   ├─LocalVariableSyntax
//@[067:0068) |   |     |   | └─IdentifierSyntax
//@[067:0068) |   |     |   |   └─Token(Identifier) |y|
//@[069:0071) |   |     |   ├─Token(Arrow) |=>|
//@[072:0108) |   |     |   └─PropertyAccessSyntax
//@[072:0097) |   |     |     ├─PropertyAccessSyntax
//@[072:0086) |   |     |     | ├─ArrayAccessSyntax
//@[072:0079) |   |     |     | | ├─VariableAccessSyntax
//@[072:0079) |   |     |     | | | └─IdentifierSyntax
//@[072:0079) |   |     |     | | |   └─Token(Identifier) |resLoop|
//@[079:0080) |   |     |     | | ├─Token(LeftSquare) |[|
//@[080:0085) |   |     |     | | ├─BinaryOperationSyntax
//@[080:0081) |   |     |     | | | ├─VariableAccessSyntax
//@[080:0081) |   |     |     | | | | └─IdentifierSyntax
//@[080:0081) |   |     |     | | | |   └─Token(Identifier) |x|
//@[082:0083) |   |     |     | | | ├─Token(Slash) |/|
//@[084:0085) |   |     |     | | | └─VariableAccessSyntax
//@[084:0085) |   |     |     | | |   └─IdentifierSyntax
//@[084:0085) |   |     |     | | |     └─Token(Identifier) |y|
//@[085:0086) |   |     |     | | └─Token(RightSquare) |]|
//@[086:0087) |   |     |     | ├─Token(Dot) |.|
//@[087:0097) |   |     |     | └─IdentifierSyntax
//@[087:0097) |   |     |     |   └─Token(Identifier) |properties|
//@[097:0098) |   |     |     ├─Token(Dot) |.|
//@[098:0108) |   |     |     └─IdentifierSyntax
//@[098:0108) |   |     |       └─Token(Identifier) |accessTier|
//@[108:0109) |   |     └─Token(RightParen) |)|
//@[109:0110) |   └─Token(RightParen) |)|
//@[110:0112) ├─Token(NewLine) |\n\n|

module modLoop './empty.bicep' = [for item in range(0, 5): {
//@[000:0084) ├─ModuleDeclarationSyntax
//@[000:0006) | ├─Token(Identifier) |module|
//@[007:0014) | ├─IdentifierSyntax
//@[007:0014) | | └─Token(Identifier) |modLoop|
//@[015:0030) | ├─StringSyntax
//@[015:0030) | | └─Token(StringComplete) |'./empty.bicep'|
//@[031:0032) | ├─Token(Assignment) |=|
//@[033:0084) | └─ForSyntax
//@[033:0034) |   ├─Token(LeftSquare) |[|
//@[034:0037) |   ├─Token(Identifier) |for|
//@[038:0042) |   ├─LocalVariableSyntax
//@[038:0042) |   | └─IdentifierSyntax
//@[038:0042) |   |   └─Token(Identifier) |item|
//@[043:0045) |   ├─Token(Identifier) |in|
//@[046:0057) |   ├─FunctionCallSyntax
//@[046:0051) |   | ├─IdentifierSyntax
//@[046:0051) |   | | └─Token(Identifier) |range|
//@[051:0052) |   | ├─Token(LeftParen) |(|
//@[052:0053) |   | ├─FunctionArgumentSyntax
//@[052:0053) |   | | └─IntegerLiteralSyntax
//@[052:0053) |   | |   └─Token(Integer) |0|
//@[053:0054) |   | ├─Token(Comma) |,|
//@[055:0056) |   | ├─FunctionArgumentSyntax
//@[055:0056) |   | | └─IntegerLiteralSyntax
//@[055:0056) |   | |   └─Token(Integer) |5|
//@[056:0057) |   | └─Token(RightParen) |)|
//@[057:0058) |   ├─Token(Colon) |:|
//@[059:0083) |   ├─ObjectSyntax
//@[059:0060) |   | ├─Token(LeftBrace) |{|
//@[060:0061) |   | ├─Token(NewLine) |\n|
  name: 'foo${item}'
//@[002:0020) |   | ├─ObjectPropertySyntax
//@[002:0006) |   | | ├─IdentifierSyntax
//@[002:0006) |   | | | └─Token(Identifier) |name|
//@[006:0007) |   | | ├─Token(Colon) |:|
//@[008:0020) |   | | └─StringSyntax
//@[008:0014) |   | |   ├─Token(StringLeftPiece) |'foo${|
//@[014:0018) |   | |   ├─VariableAccessSyntax
//@[014:0018) |   | |   | └─IdentifierSyntax
//@[014:0018) |   | |   |   └─Token(Identifier) |item|
//@[018:0020) |   | |   └─Token(StringRightPiece) |}'|
//@[020:0021) |   | ├─Token(NewLine) |\n|
}]
//@[000:0001) |   | └─Token(RightBrace) |}|
//@[001:0002) |   └─Token(RightSquare) |]|
//@[002:0004) ├─Token(NewLine) |\n\n|

var modLoopNames = map(modLoop, i => i.name)
//@[000:0044) ├─VariableDeclarationSyntax
//@[000:0003) | ├─Token(Identifier) |var|
//@[004:0016) | ├─IdentifierSyntax
//@[004:0016) | | └─Token(Identifier) |modLoopNames|
//@[017:0018) | ├─Token(Assignment) |=|
//@[019:0044) | └─FunctionCallSyntax
//@[019:0022) |   ├─IdentifierSyntax
//@[019:0022) |   | └─Token(Identifier) |map|
//@[022:0023) |   ├─Token(LeftParen) |(|
//@[023:0030) |   ├─FunctionArgumentSyntax
//@[023:0030) |   | └─VariableAccessSyntax
//@[023:0030) |   |   └─IdentifierSyntax
//@[023:0030) |   |     └─Token(Identifier) |modLoop|
//@[030:0031) |   ├─Token(Comma) |,|
//@[032:0043) |   ├─FunctionArgumentSyntax
//@[032:0043) |   | └─LambdaSyntax
//@[032:0033) |   |   ├─LocalVariableSyntax
//@[032:0033) |   |   | └─IdentifierSyntax
//@[032:0033) |   |   |   └─Token(Identifier) |i|
//@[034:0036) |   |   ├─Token(Arrow) |=>|
//@[037:0043) |   |   └─PropertyAccessSyntax
//@[037:0038) |   |     ├─VariableAccessSyntax
//@[037:0038) |   |     | └─IdentifierSyntax
//@[037:0038) |   |     |   └─Token(Identifier) |i|
//@[038:0039) |   |     ├─Token(Dot) |.|
//@[039:0043) |   |     └─IdentifierSyntax
//@[039:0043) |   |       └─Token(Identifier) |name|
//@[043:0044) |   └─Token(RightParen) |)|
//@[044:0045) ├─Token(NewLine) |\n|
output modOutputs array = map(range(0, 5), i => myMod[i].outputs.foo)
//@[000:0069) ├─OutputDeclarationSyntax
//@[000:0006) | ├─Token(Identifier) |output|
//@[007:0017) | ├─IdentifierSyntax
//@[007:0017) | | └─Token(Identifier) |modOutputs|
//@[018:0023) | ├─SimpleTypeSyntax
//@[018:0023) | | └─Token(Identifier) |array|
//@[024:0025) | ├─Token(Assignment) |=|
//@[026:0069) | └─FunctionCallSyntax
//@[026:0029) |   ├─IdentifierSyntax
//@[026:0029) |   | └─Token(Identifier) |map|
//@[029:0030) |   ├─Token(LeftParen) |(|
//@[030:0041) |   ├─FunctionArgumentSyntax
//@[030:0041) |   | └─FunctionCallSyntax
//@[030:0035) |   |   ├─IdentifierSyntax
//@[030:0035) |   |   | └─Token(Identifier) |range|
//@[035:0036) |   |   ├─Token(LeftParen) |(|
//@[036:0037) |   |   ├─FunctionArgumentSyntax
//@[036:0037) |   |   | └─IntegerLiteralSyntax
//@[036:0037) |   |   |   └─Token(Integer) |0|
//@[037:0038) |   |   ├─Token(Comma) |,|
//@[039:0040) |   |   ├─FunctionArgumentSyntax
//@[039:0040) |   |   | └─IntegerLiteralSyntax
//@[039:0040) |   |   |   └─Token(Integer) |5|
//@[040:0041) |   |   └─Token(RightParen) |)|
//@[041:0042) |   ├─Token(Comma) |,|
//@[043:0068) |   ├─FunctionArgumentSyntax
//@[043:0068) |   | └─LambdaSyntax
//@[043:0044) |   |   ├─LocalVariableSyntax
//@[043:0044) |   |   | └─IdentifierSyntax
//@[043:0044) |   |   |   └─Token(Identifier) |i|
//@[045:0047) |   |   ├─Token(Arrow) |=>|
//@[048:0068) |   |   └─PropertyAccessSyntax
//@[048:0064) |   |     ├─PropertyAccessSyntax
//@[048:0056) |   |     | ├─ArrayAccessSyntax
//@[048:0053) |   |     | | ├─VariableAccessSyntax
//@[048:0053) |   |     | | | └─IdentifierSyntax
//@[048:0053) |   |     | | |   └─Token(Identifier) |myMod|
//@[053:0054) |   |     | | ├─Token(LeftSquare) |[|
//@[054:0055) |   |     | | ├─VariableAccessSyntax
//@[054:0055) |   |     | | | └─IdentifierSyntax
//@[054:0055) |   |     | | |   └─Token(Identifier) |i|
//@[055:0056) |   |     | | └─Token(RightSquare) |]|
//@[056:0057) |   |     | ├─Token(Dot) |.|
//@[057:0064) |   |     | └─IdentifierSyntax
//@[057:0064) |   |     |   └─Token(Identifier) |outputs|
//@[064:0065) |   |     ├─Token(Dot) |.|
//@[065:0068) |   |     └─IdentifierSyntax
//@[065:0068) |   |       └─Token(Identifier) |foo|
//@[068:0069) |   └─Token(RightParen) |)|
//@[069:0070) ├─Token(NewLine) |\n|

//@[000:0000) └─Token(EndOfFile) ||
