" AST语法数高亮匹配

sy clear

if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "ast"

sy keyword astKeyword CompUnit
hi default link astKeyword keyword

sy match astComment "//.*"
hi default link astComment Comment

sy match astSymbol "\<[A-Z][a-z]*\([A-Z][a-z]*\)*\>"
hi default link astSymbol Function

sy match astConst "\<[A-Z_][A-Z0-9_]\+\>"
hi default link astConst Number

sy region astString start='"' end='"'
hi default link astString String
