set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "railscasts"

" GUI & hexadecimal palettes"{{{
if has("gui_running")
    let s:vmode       = "gui"
    let s:base4       = "#2b2b2b"
    let s:base3       = "#353535"
    let s:base2       = "#414141"
    let s:base1       = "#9a9a9a"
    let s:base0       = "#e6e1dc"
    " let s:gold        = "#bc9458" " original
    let s:gold        = "#a68f62"
    let s:yellow      = "#ffc66d"
    let s:orange      = "#cc7833"
    let s:lime        = "#a5c261"
    let s:green       = "#519f50"
    " let s:lilac       = "#d0d0ff" " original
    let s:lilac       = "#beb1f5"
    let s:light_blue  = "#6d9cde"
    let s:dark_blue   = "#474d5c"
    let s:light_red   = "#da4939"
    let s:red         = "#990000"
    let s:beige       = "#c4be89"
else
    let s:vmode       = "cterm"
    let s:base4       = "0"
    let s:base3       = "8"
    let s:base2       = "14"
    let s:base1       = "15"
    let s:base0       = "7"
    let s:gold        = "11"
    let s:yellow      = "3"
    let s:orange      = "5"
    let s:lime        = "2"
    let s:green       = "10"
    let s:lilac       = "6"
    let s:light_blue  = "4"
    let s:dark_blue   = "12"
    let s:light_red   = "1"
    let s:red         = "9"
    let s:beige       = "13"
endif
" }}}
" Highlighting primitives"{{{
exe "let s:bg_base4       = ' ".s:vmode."bg=".s:base4      ."'"
exe "let s:bg_base3       = ' ".s:vmode."bg=".s:base3      ."'"
exe "let s:bg_base2       = ' ".s:vmode."bg=".s:base2      ."'"
exe "let s:bg_base1       = ' ".s:vmode."bg=".s:base1      ."'"
exe "let s:bg_base0       = ' ".s:vmode."bg=".s:base0      ."'"
exe "let s:bg_gold        = ' ".s:vmode."bg=".s:gold       ."'"
exe "let s:bg_yellow      = ' ".s:vmode."bg=".s:yellow     ."'"
exe "let s:bg_orange      = ' ".s:vmode."bg=".s:orange     ."'"
exe "let s:bg_lime        = ' ".s:vmode."bg=".s:lime       ."'"
exe "let s:bg_green       = ' ".s:vmode."bg=".s:green      ."'"
exe "let s:bg_lilac       = ' ".s:vmode."bg=".s:lilac      ."'"
exe "let s:bg_light_blue  = ' ".s:vmode."bg=".s:light_blue ."'"
exe "let s:bg_dark_blue   = ' ".s:vmode."bg=".s:dark_blue  ."'"
exe "let s:bg_light_red   = ' ".s:vmode."bg=".s:light_red  ."'"
exe "let s:bg_red         = ' ".s:vmode."bg=".s:red        ."'"
exe "let s:bg_beige       = ' ".s:vmode."bg=".s:beige      ."'"

exe "let s:fg_base4       = ' ".s:vmode."fg=".s:base4      ."'"
exe "let s:fg_base3       = ' ".s:vmode."fg=".s:base3      ."'"
exe "let s:fg_base2       = ' ".s:vmode."fg=".s:base2      ."'"
exe "let s:fg_base1       = ' ".s:vmode."fg=".s:base1      ."'"
exe "let s:fg_base0       = ' ".s:vmode."fg=".s:base0      ."'"
exe "let s:fg_gold        = ' ".s:vmode."fg=".s:gold       ."'"
exe "let s:fg_yellow      = ' ".s:vmode."fg=".s:yellow     ."'"
exe "let s:fg_orange      = ' ".s:vmode."fg=".s:orange     ."'"
exe "let s:fg_lime        = ' ".s:vmode."fg=".s:lime       ."'"
exe "let s:fg_green       = ' ".s:vmode."fg=".s:green      ."'"
exe "let s:fg_lilac       = ' ".s:vmode."fg=".s:lilac      ."'"
exe "let s:fg_light_blue  = ' ".s:vmode."fg=".s:light_blue ."'"
exe "let s:fg_dark_blue   = ' ".s:vmode."fg=".s:dark_blue  ."'"
exe "let s:fg_light_red   = ' ".s:vmode."fg=".s:light_red  ."'"
exe "let s:fg_red         = ' ".s:vmode."fg=".s:red        ."'"
exe "let s:fg_beige       = ' ".s:vmode."fg=".s:beige      ."'"
"}}}

exe "hi! Normal"                 .s:fg_base0       .s:bg_base4
exe "hi! Comment"                .s:fg_gold

exe "hi! Constant"               .s:fg_yellow
exe "hi! String"                 .s:fg_lime
exe "hi! Character"              .s:fg_green

exe "hi! Identifier"             .s:fg_lilac "gui=NONE, cterm=NONE"
exe "hi! Function"               .s:fg_light_red

exe "hi! Statement"              .s:fg_orange "gui=NONE, cterm=NONE"
hi! link Label String
hi! link Exception PreProc

exe "hi! PreProc"                .s:fg_light_red
hi! link Define Type
exe "hi! Macro"                  .s:fg_beige

exe "hi! Type"                   .s:fg_light_blue "gui=NONE, cterm=NONE"
hi! link StorageClass Identifier

exe "hi! Special"                .s:fg_light_blue
exe "hi! SpecialChar"            .s:fg_green
exe "hi! Tag"                    .s:fg_orange
exe "hi! Delimiter"              .s:fg_base1
exe "hi! SpecialComment"         .s:fg_base1
hi! link Debug Macro

exe "hi! Error"                  .s:fg_base0       .s:bg_red
exe "hi! Todo"                   .s:fg_yellow      .s:bg_base4

exe "hi! Cursor"                                   .s:bg_base1
exe "hi! CursorLine"                               .s:bg_base3  "gui=NONE, cterm=NONE"
hi! link CursorColumn CursorLine
exe "hi! ColorColumn"                              .s:bg_base2
exe "hi! LineNr"                 .s:fg_base1
exe "hi! CursorLineNr"           .s:fg_yellow                   "gui=bold, cterm=bold"
hi! link NonText LineNr

exe "hi! Folded"                 .s:fg_base1       .s:bg_base4

exe "hi! PMenu"                  .s:fg_base0       .s:bg_base3
exe "hi! PMenuSel"               .s:fg_base0       .s:bg_base2
exe "hi! PMenuSBar"                                .s:bg_base2
exe "hi! PMenuThumb"                               .s:bg_base0

exe "hi! Visual"                                   .s:bg_dark_blue
exe "hi! Search"                 .s:fg_base0       .s:bg_dark_blue
hi! link IncSearch Search

exe "hi! VertSplit"              .s:fg_base4       .s:bg_base1
exe "hi! MatchParen"             .s:fg_light_red   .s:bg_base4      "gui=underline, cterm=underline"
" exe "hi! MatchParen"             .s:fg_base4       .s:bg_light_red
" hi! link MatchParen Search
exe "hi! Title"                  .s:fg_yellow
exe "hi! Directory"              .s:fg_lime
exe "hi! SpecialKey"             .s:fg_base1

exe "hi! SpellBad"               .s:fg_light_red   .s:bg_base4      "gui=underline, cterm=underline"

exe "hi! FoldColumn"             .s:fg_base0       .s:bg_base2
exe "hi! SignColumn"             .s:fg_base0       .s:bg_base2

exe "hi! Underlined"             .s:fg_light_blue
exe "hi! Question"               .s:fg_lime
exe "hi! WarningMsg"             .s:fg_light_red
exe "hi! ErrorMsg"               .s:fg_base4       .s:bg_light_red

exe "hi! Conceal"                .s:fg_yellow      .s:bg_base4
exe "hi! Tag"                    .s:fg_light_red   .s:bg_base4

exe "hi! StatusLine"             .s:fg_base0       .s:bg_base2  "gui=NONE, cterm=NONE"
exe "hi! WildMenu"               .s:bg_lime                     "gui=bold, cterm=bold"

" Diff {{{
exe "hi! DiffAdd"                .s:fg_green       .s:bg_base4      "gui=underline, cterm=underline"
exe "hi! DiffDelete"             .s:fg_light_red   .s:bg_base4
exe "hi! DiffChange"             .s:fg_orange      .s:bg_base4      "gui=underline, cterm=underline"
exe "hi! DiffText"               .s:fg_orange      .s:bg_base4      "gui=underline, cterm=underline"
" }}}
" Syntastic {{{
exe "hi! SyntasticErrorSign"      .s:fg_light_red  .s:bg_base4
exe "hi! SyntasticStyleErrorSign" .s:fg_light_red  .s:bg_base4
" }}}
" ruby {{{
hi! link rubyDefine Statement
" }}}
" julia {{{
hi! link juliaAssignOperator Statement
hi! link juliaTypeOperator Statement
hi! link juliaRangeOperator Statement
hi! link juliaVarargOperator Statement
hi! link juliaRangeEnd Number
" hi! link juliaKeyword PreProc
hi! link juliaKeyword Statement
hi! link juliaParDelim Delimiter
exe "hi! juliaStringVarsPla"     .s:fg_lime
exe "hi! juliaStringVarDelim"    .s:fg_lime
exe "hi! juliaStringVarsPar"     .s:fg_lime
" }}}
" NERDTree {{{
exe "hi! NERDTreeCWD"            .s:fg_light_red
exe "hi! NERDTreeDirSlash"       .s:fg_yellow
exe "hi! NERDTreeHelp"           .s:fg_gold
exe "hi! NERDTreeHelpTitle"      .s:fg_yellow
exe "hi! NERDTreeHelpKey"        .s:fg_lilac
" }}}
" tex {{{
hi! link TexMathDelim Macro
exe "hi! TexMathOper"            .s:fg_light_blue
exe "hi! TexCite"                .s:fg_lime
hi! link texOnlyMath texMathOper
" }}}
" sh {{{
hi! link shQuote String
" }}}
" markdown {{{
hi! link markdownUrl String
" }}}
" indent-guides {{{
let g:indent_guides_auto_colors = 0
hi! link IndentGuidesOdd ColorColumn
hi! link IndentGuidesEven ColorColumn
" }}}
" tex-conceal {{{
exe "hi! texBoldMathText" .s:fg_light_blue
" }}}
