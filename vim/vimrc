"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " turn off vi compatibility
set encoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on

" Let Vunlde manage Vundle
Bundle 'gmarik/vundle'

" Define bundles via Github repos
Bundle 'airblade/vim-gitgutter'
Bundle 'camelpunch/test_server'
Bundle 'guns/vim-clojure-static'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'msanders/snipmate.vim'
Bundle 'rking/ag.vim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/paredit.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance and Behavior
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set background=dark
colorscheme desert
set ruler
set numberwidth=5
set visualbell
set wildmenu " shows possible completions above command line
set list listchars=tab:\ \ ,trail:· " Display tabs and trailing spaces

" Backspace Behavior
set backspace=indent,eol,start

" Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=./tags;

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch             " Find the next match as we type the search
set hlsearch              " Highlight searches by default
set smartcase             " ignore case if lowercase, otherwise match case

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Saving and Backup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile
set nobackup
set nowb

" save on lost focus, warning for untitled buffers
au FocusLost * :wa

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

" remap ESC
inoremap jj <ESC>

" unset last search pattern by hitting space
nnoremap <space> :noh<CR> <CR>

" for running ruby scripts with ease
map <leader>r :w <bar> !ruby %<CR>

" changing windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Opening and Sourcing vimrc
" open vimrc
nmap <silent> <leader>ev :e  $MYVIMRC<cr> " open .vimrc
" source vimrc
nmap <silent> <leader>ee :so $MYVIMRC<cr> " source .vimrc

" Test server commands for Ruby specs
map <leader>rt :RunTest<CR>
map <leader>ra :RunTestAgain<CR>
map <leader>rl :RunTestLine<CR>

" close the quickfix window
nmap <leader>c :cclose<cr>

" Ag current word
nmap <leader>a *:AgFromSearch<cr>

nmap <leader>t :Eval (clojure.test/run-tests)<CR>

" set gutter to same color as background
highlight clear SignColumn

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$'
      \ }
let g:ctrlp_show_hidden = 1

" enable mouse scrolling
" works in iTerm2
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
