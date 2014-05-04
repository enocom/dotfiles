" Vim color file
" Maintainer:	David Schweikert <dws@ee.ethz.ch>
" Last Change:	2006 Apr 30

highlight clear

let colors_name = "delek"

" Normal should come first
highlight Normal     guifg=Black  guibg=White
highlight Cursor     guifg=bg     guibg=fg
highlight lCursor    guifg=NONE   guibg=Cyan

" Note: we never set 'term' because the defaults for B&W terminals are OK
highlight DiffAdd       ctermbg=LightBlue    guibg=LightBlue
highlight DiffChange    ctermbg=LightMagenta guibg=LightMagenta
highlight DiffDelete    ctermfg=Blue	   ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan
highlight DiffText      ctermbg=Red	   cterm=bold gui=bold guibg=Red
highlight Directory     ctermfg=DarkBlue	   guifg=Blue
highlight ErrorMsg      ctermfg=White	   ctermbg=DarkRed  guibg=Red	    guifg=White
highlight FoldColumn    ctermfg=DarkBlue	   ctermbg=Grey     guibg=Grey	    guifg=DarkBlue
highlight Folded        ctermbg=Grey	   ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
highlight IncSearch     cterm=NONE	   cterm=underline
highlight LineNr        ctermfg=Brown	   guifg=Brown
highlight ModeMsg       cterm=bold	   gui=bold
highlight MoreMsg       ctermfg=DarkGreen    gui=bold guifg=SeaGreen
highlight NonText       ctermfg=Blue	   gui=bold guifg=gray guibg=white
highlight Pmenu         guibg=LightBlue
highlight PmenuSel      ctermfg=White	   ctermbg=DarkBlue  guifg=White  guibg=DarkBlue
highlight Question      ctermfg=DarkGreen    gui=bold guifg=SeaGreen
highlight Search        ctermfg=NONE	   ctermbg=NONE cterm=underline
highlight SpecialKey    ctermfg=DarkBlue	   guifg=Blue
highlight StatusLine    cterm=bold	   ctermbg=blue ctermfg=yellow guibg=gold guifg=blue
highlight StatusLineNC	cterm=bold	   ctermbg=blue ctermfg=black  guibg=gold guifg=blue
highlight Title         ctermfg=DarkMagenta  gui=bold guifg=Magenta
highlight VertSplit     cterm=reverse	   gui=reverse
highlight Visual        ctermbg=NONE	   cterm=reverse gui=reverse guifg=Grey guibg=fg
highlight VisualNOS     cterm=underline,bold gui=underline,bold
highlight WarningMsg    ctermfg=DarkRed	   guifg=Red
highlight WildMenu      ctermfg=Black	   ctermbg=Yellow    guibg=Yellow guifg=Black

" syntax highlighting
highlight Comment       cterm=NONE ctermfg=DarkRed     gui=NONE guifg=red2
highlight Constant      cterm=NONE ctermfg=DarkGreen   gui=NONE guifg=green3
highlight Identifier    cterm=NONE ctermfg=DarkCyan    gui=NONE guifg=cyan4
highlight PreProc       cterm=NONE ctermfg=DarkMagenta gui=NONE guifg=magenta3
highlight Special       cterm=NONE ctermfg=LightRed    gui=NONE guifg=deeppink
highlight Statement     cterm=bold ctermfg=Blue	      gui=bold guifg=blue
highlight Type	        cterm=NONE ctermfg=Blue	      gui=bold guifg=blue

" vim: sw=2
