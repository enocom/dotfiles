"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " turn off vi compatibility
set encoding=utf-8

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

filetype plugin indent on

" Let Vunlde manage Vundle
Bundle 'gmarik/vundle'

" Define bundles via Github repos
Bundle 'wincent/Command-T'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'rking/ag.vim'

" =============== Appearance ======================
syntax on
set background=dark
colorscheme default
set number
set ruler
set numberwidth=5
set visualbell
" always display tabs
" set showtabline=2
" shows possible completions above command line
set wildmenu
" Display tabs and trailing spaces
set list listchars=tab:\ \ ,trail:·
" highlight anything over 80 chars
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v.*/
" Use syntax based code folding
set foldmethod=syntax
" set the tag file search order
set tags=./tags;

" =============== Search Settings ================
set incsearch             " Find the next match as we type the search
set hlsearch              " Highlight searches by default
set smartcase             " ignore case if lowercase, otherwise match case

" =============== Turn off Swap Files ============
set noswapfile
set nobackup
set nowb

" save on lost focus, warning for untitled buffers
au FocusLost * :wa

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

" remap ESC
inoremap jj <ESC>

" unset last search pattern by hitting space
nnoremap <space> :noh<CR> <CR>

" for running ruby scripts with ease
map <leader>r :w <bar> !ruby %<CR>

" =============== changing windows ========================
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" =============== vimrc ========================
" open vimrc
nmap <silent> <leader>ev :e  $MYVIMRC<cr> " open .vimrc
" source vimrc
nmap <silent> <leader>ee :so $MYVIMRC<cr> " source .vimrc

map \ :NERDTreeToggle<CR>

let g:CommandTMatchWindowReverse=1
