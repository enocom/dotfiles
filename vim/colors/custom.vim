" Vim color file based on delek
" Maintainer:	Eno Compton <eno4@ecom.com>
" Last Change: 2014 May 11

highlight clear

let colors_name = "custom"

" Note: we never set 'term' because the defaults for B&W terminals are OK
highlight DiffAdd       ctermbg=LightBlue
highlight DiffChange    ctermbg=LightMagenta
highlight DiffDelete    ctermfg=Blue	       ctermbg=LightCyan
highlight DiffText      ctermbg=Red	         cterm=bold
highlight Directory     ctermfg=DarkBlue
highlight ErrorMsg      ctermfg=White	       ctermbg=DarkRed
highlight FoldColumn    ctermfg=DarkBlue	   ctermbg=Grey
highlight Folded        ctermbg=Grey	       ctermfg=DarkBlue
highlight IncSearch     cterm=NONE	         cterm=underline
highlight LineNr        ctermfg=Brown
highlight ModeMsg       cterm=bold
highlight MoreMsg       ctermfg=DarkGreen
highlight NonText       ctermfg=Blue
highlight PmenuSel      ctermfg=White 	     ctermbg=DarkBlue
highlight Question      ctermfg=DarkGreen
highlight Search        ctermfg=NONE  	     ctermbg=NONE cterm=underline
highlight SpecialKey    ctermfg=DarkBlue
highlight StatusLine    cterm=bold	         ctermbg=yellow ctermfg=black
highlight StatusLineNC	cterm=bold	         ctermbg=blue ctermfg=black
highlight Title         ctermfg=DarkMagenta
highlight VertSplit     cterm=reverse
highlight Visual        ctermbg=NONE  	     cterm=reverse
highlight VisualNOS     cterm=underline,bold
highlight WarningMsg    ctermfg=DarkRed
highlight WildMenu      ctermfg=Black	       ctermbg=Yellow

" syntax highlighting
highlight Comment       cterm=NONE           ctermfg=DarkRed
highlight Constant      cterm=NONE           ctermfg=DarkGreen
highlight Identifier    cterm=NONE           ctermfg=DarkCyan
highlight PreProc       cterm=NONE           ctermfg=DarkMagenta
highlight Special       cterm=NONE           ctermfg=LightRed
highlight Statement     cterm=bold           ctermfg=Blue
highlight Type	        cterm=NONE           ctermfg=Blue

" vim: sw=2
