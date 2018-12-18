set background=dark
syntax reset

let g:colors_name='lunaluna'
let colors_name='lunaluna'

" palette
"

let s:w = "#b9d1f9"
let s:b = "#21222b"
let s:b1 = "#8ab3f5"
let s:b2 = "#5b94f0"
let s:b3 = "#2c76ec"
let s:y1 = "#ebc661"
let s:y2 = "#e5b633"
let s:y3 = "#cc9d1a"

let s:bg       = s:b
let s:fg       = s:w
let s:none     = "NONE"
let s:cursor_line = "#313640"
let s:warning  = "#FF3030"
let s:yellow   = "#FFD700"

function! s:h(group, fg, bg, attr)
  if a:attr != ""
    exec "hi " . a:group . " guifg=" . a:fg . " guibg=" . a:bg . " gui=" . a:attr
  else
    exec "hi " . a:group . " guifg=" . a:fg . " guibg=" . a:bg . " gui=" . s:none
  endif
endfun

call s:h("Normal" , s:fg , s:bg , "")
call s:h("NonText" , s:fg , s:none , "")

call s:h("Cursor" , s:bg , s:w ,"")
call s:h("CursorColumn" , s:none , s:cursor_line , "")
call s:h("CursorLine" , s:none , s:cursor_line , "")

call s:h("LineNr" , s:fg , s:bg , "")
call s:h("CursorLineNr" , s:y1 , s:bg , "")

"call s:h("DiffAdd",)
"call s:h("DiffChange", )
"call s:h("DiffDelete", s:warning , s:none , "")
"call s:h("DiffText", )
"call s:h("IncSearch", s:bg, s:yellow, "")
call s:h("Search", s:bg, s:yellow, "")

call s:h("ErrorMsg", s:warning, s:none, "")
call s:h("ModeMsg", s:fg, s:none, "")
call s:h("MoreMsg", s:fg, s:none, "")
call s:h("WarningMsg", s:warning, s:none, "")
call s:h("Question", s:fg, s:none, "")
"
call s:h("Pmenu", s:fg, s:bg, "")
call s:h("PmenuSel", s:y1, s:bg, "")
call s:h("PmenuSbar", s:none, s:bg, "")
call s:h("PmenuThumb", s:none, s:bg, "")
"
call s:h("SpellBad", s:warning, s:none, "")
call s:h("SpellCap", s:yellow, s:none, "")
call s:h("SpellLocal", s:yellow, s:none, "")
call s:h("SpellRare", s:yellow, s:none, "")

"
"call s:h("StatusLine", s:warm_d, s:azure_dd, "")
"call s:h("StatusLineNC", s:azure_dd, s:azure_dd, "")
"call s:h("TabLine", s:comment_fg, s:cursor_line, "")
"call s:h("TabLineFill", s:comment_fg, s:cursor_line, "")
"call s:h("TabLineSel", s:fg, s:bg, "")
"
"call s:h("Visual", "", s:selection, "")
"call s:h("VisualNOS", "", s:selection, "")
"
"call s:h("ColorColumn", "", s:color_col, "")
"call s:h("Conceal", s:fg, "", "")
"call s:h("Directory", s:blue, "", "")
"call s:h("VertSplit", s:vertsplit, s:vertsplit, "")
"call s:h("Folded", s:fg, "", "")
"call s:h("FoldColumn", s:fg, "", "")
call s:h("SignColumn", s:warning , s:bg, "")
"
call s:h("MatchParen", s:y1, s:none, "underline")
"call s:h("SpecialKey", s:fg, "", "")
call s:h("Title", s:y2, "", "")
"call s:h("WildMenu", s:fg, "", "")
"

call s:h("Comment" , s:b3 , s:none , "")
call s:h("Constant" , s:y3 , s:none , "")

" literal
call s:h("String" , s:y3 , s:none , "")
call s:h("Character" , s:y3 , s:none , "")
call s:h("Number" , s:y3 , s:none , "")
call s:h("Boolean" , s:y3 , s:none , "")
call s:h("Float" , s:y3 , s:none , "")


call s:h("Identifier" , s:y3 , s:none , "")
call s:h("Function" , s:b2 , s:none , "")

call s:h("Statement" , s:y2 , s:none , "")
call s:h("Conditional" , s:y2 , s:none , "")
call s:h("Repeat" , s:y2 , s:none , "")
call s:h("Label" , s:y2 , s:none , "")
call s:h("Operator" , s:y2 , s:none , "")
call s:h("Keyword" , s:b1 , s:none , "")
call s:h("Exception" , s:y2 , s:none , "")

call s:h("PreProc" , s:b3 , s:none , "")
call s:h("Include" , s:b3 , s:none , "")
call s:h("Define" , s:b3 , s:none , "")
call s:h("Macro" , s:b3 , s:none , "")
call s:h("PreCondit" , s:b3 , s:none , "")

call s:h("Type" , s:b1 , s:none , "")
call s:h("StorageClass" , s:b1 , s:none , "")
call s:h("Structure" , s:y2 , s:none , "")
call s:h("Typedef" , s:y2 , s:none , "")
call s:h("Special" , s:y3 , s:none , "")
call s:h("SpecialChar" , s:y3 , s:none , "")
call s:h("Tag" , s:y3 , s:none , "")
call s:h("Delimiter" , s:y3 , s:none , "")
call s:h("SpecialComment" , s:none , s:none , "")
call s:h("Debug" , s:none , s:none , "")
call s:h("Underlined" , s:none , s:none , "")
call s:h("Ignore" , s:none , s:none , "")
call s:h("Error" , s:warning , s:none , "")
call s:h("Todo" , s:warning , s:none , "")

" Plugins {
" GitGutter
"call s:h("GitGutterAdd", s:warm_l, s:bg, "")
"call s:h("GitGutterDelete", s:warm_d, s:bg, "")
"call s:h("GitGutterChange", s:warm_n, s:bg, "")
"call s:h("GitGutterChangeDelete", s:warm_d, s:bg, "")
" Fugitive
call s:h("diffAdded", s:b2, "", "")
call s:h("diffRemoved", s:y2, "", "")
" }


" Git {
call s:h("gitcommitComment", s:y2, "", "")
call s:h("gitcommitUnmerged", s:b3, "", "")
call s:h("gitcommitOnBranch", s:fg, "", "")
call s:h("gitcommitBranch", s:b2, "", "")
call s:h("gitcommitDiscardedType", s:b3, "", "")
call s:h("gitcommitSelectedType", s:fg, "", "")
call s:h("gitcommitHeader", s:fg, "", "")
call s:h("gitcommitUntrackedFile", s:b3, "", "")
call s:h("gitcommitDiscardedFile", s:b3, "", "")
call s:h("gitcommitSelectedFile", s:fg, "", "")
call s:h("gitcommitUnmergedFile", s:y3, "", "")
call s:h("gitcommitFile", s:fg, "", "")
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile
