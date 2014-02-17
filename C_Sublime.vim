
" Initialization
if &t_Co != 256 && ! has("gui_running")
   echomsg ""
   echomsg "err: please use 256-color terminal."
   echomsg ""
   finish
endif

set background=dark

highlight clear

if exists("syntax_on")
   syntax reset
endif
let colors_name = "C_Sublime"

"==============================================================================
" Syntax highlighting. Specific for C so the coloring can stop driving me nuts.
"==============================================================================

" blue 
hi c89Type              ctermfg=117
hi link cStructure      c89Type
hi link cStructureType  c89Type
hi link cSizeofOperator c89Type

" green 154 or 155 (154 is brighter)
hi c89Function     ctermfg=154

" pink 
hi cDefine             ctermfg=197
hi link cInclude       cDefine
hi link cStatement   cDefine
hi link cConditional   cDefine
hi link cRepeat        cDefine

" yellow
hi cPPIncludeFile  ctermfg=221
hi link cString    cPPIncludeFile

" purple
hi cDecimal          ctermfg=135
hi link cOctalZero   cDecimal
hi link cFloat       cDecimal



" plain colors
hi c89Identifier        ctermfg=white
hi cCommentError        ctermfg=darkgrey
hi comment              ctermfg=darkgrey
hi cConditionalOperator ctermfg=white
hi cMathOperator        ctermfg=white
hi cLogicalOperator     ctermfg=white
hi cPointerOperator     ctermfg=white


