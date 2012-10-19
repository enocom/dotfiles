" Vim color file
" Maintainer: Eno Compton <eno4@ecom.com>
" Note: This is a modified version of Hans Fugal's desert color scheme.

hi clear

let colors_name = "desert_custom"

" color terminal definitions
hi DiffAdd    	ctermbg=DarkBlue
hi DiffChange   ctermbg=DarkMagenta
hi DiffDelete   cterm=bold ctermfg=DarkBlue ctermbg=DarkCyan
hi DiffText   	cterm=bold ctermbg=DarkRed
hi Directory    ctermfg=DarkCyan
hi ErrorMsg   	cterm=bold ctermfg=Gray ctermbg=DarkRed
hi Folded   	  ctermfg=DarkGrey ctermbg=NONE
hi FoldColumn   ctermfg=DarkGrey ctermbg=NONE
hi IncSearch    cterm=NONE ctermfg=Black ctermbg=White
hi LineNr   	  ctermfg=Yellow
hi MoreMsg    	ctermfg=Darkgreen
hi ModeMsg    	cterm=NONE ctermfg=Brown
hi NonText    	cterm=bold ctermfg=Darkblue
hi Pmenu        ctermfg=Black ctermbg=White
hi PmenuSel     ctermfg=Black ctermbg=DarkBlue
hi Question   	ctermfg=Green
hi Search   	  cterm=NONE ctermfg=Black ctermbg=Green
hi SpecialKey   ctermfg=DarkGreen
hi StatusLine   cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi Title    	  ctermfg=DarkMagenta
hi VertSplit    cterm=reverse
hi Visual   	  cterm=reverse
hi VisualNOS   	cterm=bold,underline
hi WarningMsg  	ctermfg=DarkRed
hi WildMenu   	ctermfg=Black ctermbg=Yellow

" syntax highlighting
hi Comment    	ctermfg=DarkCyan
hi Constant   	ctermfg=Brown
hi Error    	  cterm=bold ctermfg=Gray ctermbg=DarkRed
hi Identifier   ctermfg=DarkCyan
hi Ignore   	  cterm=bold ctermfg=Gray
hi Ignore      	ctermfg=Darkgrey
hi PreProc    	ctermfg=DarkMagenta
hi Special    	ctermfg=DarkMagenta
hi Statement    ctermfg=Yellow
hi Type   		  ctermfg=DarkGreen
hi Underlined   cterm=underline ctermfg=DarkMagenta

"vim: sw=4
