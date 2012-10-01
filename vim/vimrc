"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " turn off vi compatibility
set encoding=utf-8

" =============== Appearance ======================
syntax on
colorscheme zenburn
set number
set numberwidth=5
set visualbell
" always display tabs
set showtabline=2
" shows possible completions above command line
set wildmenu
" Display tabs and trailing spaces
set list listchars=tab:\ \ ,trail:·

" =============== Search Settings ================
set incsearch             " Find the next match as we type the search
set hlsearch              " Highlight searches by default

" =============== Turn off Swap Files ============
set noswapfile
set nobackup
set nowb

" =============== Backspace Behavior ==============
set backspace=indent,eol,start

" =============== Indentation =====================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

" =============== Shortcuts ========================
" Navigate between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" =============== Old School ======================
" disble arrow key functionality in normal and insert modes
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup GUI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
  set guioptions=egmrt
  set guioptions-=r
  set guifont=Monaco:h18
  set gcr=a:blinkon0 " turn off cursor blink
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Source the vimrc file after save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
