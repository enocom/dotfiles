"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " turn off vi compatibility
set encoding=utf-8

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vunlde manage Vundle
Bundle 'gmarik/vundle'

" Define bundles via Github repos
Bundle 'wincent/Command-T'
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-rails'
Bundle 'rstacruz/sparkup'
Bundle 'scrooloose/syntastic'

" =============== Appearance ======================
syntax on
set background=light
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

" =============== hidden buffers ==================
set hidden " allows for opening new without saving current buffer

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "
" tempting remap of command key
" nnoremap ; :

" remap ESC
inoremap jj <ESC>

" unset last search pattern by hitting return
nnoremap <CR> :noh<CR> <CR>

" for running ruby scripts with ease
map <leader>r :w <bar> !ruby %<CR>

" for running python scripts with ease
map <leader>p :w <bar> !python %<CR>

" =============== Refresh Command-T files =================
nnoremap <leader>tf :CommandTFlush<CR>

" =============== changing windows ========================
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Resize windows
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
  map <leader>[ <C-w><
  map <leader>] <C-w>>
endif

" =============== vimrc ========================
nmap <silent> <leader>ev :e  $MYVIMRC<cr> " open .vimrc
nmap <silent> <leader>ee :so $MYVIMRC<cr> " source .vimrc

" =============== tabs =============================
map <leader>nt :tabnew<cr>
map <leader>ct :tabclose<cr>
map <leader>ot :tabonly<cr>
map <leader>xt :tabnext<cr>
map <leader>pt :tabprevious<cr>
