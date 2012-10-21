" Vim color file
" Maintainer: Eno Compton <eno4@ecom.com>
" Note: This is a modified version of Hans Fugal's desert color scheme.

hi clear

let colors_name = "roku"

" color terminal definitions
hi DiffAdd    	ctermbg=DarkBlue
hi DiffChange   ctermbg=DarkMagenta
hi DiffDelete   ctermfg=DarkBlue ctermbg=DarkCyan
hi DiffText   	ctermbg=DarkRed
hi Directory    ctermfg=DarkCyan
hi ErrorMsg   	ctermfg=Gray ctermbg=DarkRed
hi Folded   	  ctermfg=DarkGrey ctermbg=NONE
hi FoldColumn   ctermfg=DarkGrey ctermbg=NONE
hi IncSearch    cterm=NONE ctermfg=Black ctermbg=White
hi LineNr   	  ctermfg=Yellow
hi MatchParen   cterm=reverse ctermbg=Black
hi MoreMsg    	ctermfg=Darkgreen
hi ModeMsg    	cterm=NONE ctermfg=Brown
hi NonText    	ctermfg=Darkblue
hi Pmenu        ctermfg=Black ctermbg=White
hi PmenuSel     ctermfg=Black ctermbg=DarkBlue
hi Question   	ctermfg=Green
hi Search   	  cterm=NONE ctermfg=Black ctermbg=Green
hi SpecialKey   ctermfg=DarkGreen
hi statusline   ctermfg=black ctermbg=White
hi StatusLineNC ctermfg=Black ctermbg=Grey
hi Title    	  ctermfg=DarkMagenta
hi VertSplit    ctermbg=Yellow
hi Visual   	  cterm=reverse ctermbg=Black
hi VisualNOS   	cterm=underline
hi WarningMsg  	ctermfg=DarkRed
hi WildMenu   	ctermfg=Black ctermbg=Yellow

" syntax highlighting
hi Comment    	ctermfg=DarkCyan
hi Constant   	ctermfg=DarkRed
hi Error    	  ctermfg=Gray ctermbg=DarkRed
hi Identifier   ctermfg=DarkCyan
hi Ignore   	  ctermfg=Gray
hi Ignore      	ctermfg=Darkgrey
hi PreProc    	ctermfg=DarkMagenta
hi Special    	ctermfg=DarkRed
hi Statement    ctermfg=Yellow
hi Type   		  ctermfg=DarkGreen
hi Underlined   cterm=underline ctermfg=DarkMagenta

"vim: sw=4
