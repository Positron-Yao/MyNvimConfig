" 重置语法（防止重复加载）
if exists("b:current_syntax")
  finish
endif

" ---- 定义语法规则 ----

" 1. 关键字（如 if, else, function）
syntax keyword tcKeyword const label
hi link tcKeyword Keyword  " 链接到预定义的高亮组 Keyword

" 2. 注释（假设你的语言使用 // 和 /* */）
syntax match tcComment "#.*" 
hi link tcComment Comment

" 3. 字符串（支持转义字符 \"）
" syntax region tcString start=/"/ skip=/\\"/ end=/"/ 
" hi link tcString String

" 4. 函数名（匹配类似 `func myFunc()` 的模式）
syntax match tcFunction "^[a-zA-Z_]+[a-zA-Z0-9_]*"
syntax keyword tcFuncDecl func contained
hi link tcFunction Function

" 5. 数字（整数和浮点数）
syntax match tcNumber "\<\d\+\>"
syntax match tcNumber "\<\d\+\.\d\+\>"
hi link tcNumber Number

" ---- 其他高级用法 ----

" 嵌套规则（例如字符串中的转义字符）
syntax match tcEscape "\\\"" contained
hi link tcEscape SpecialChar
syntax cluster tcString add=tcEscape  " 将转义规则添加到字符串集群

" 启用当前语法
let b:current_syntax = "tc"
