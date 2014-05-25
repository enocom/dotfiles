set nocompatible
set encoding=utf-8

filetype off
set rtp+=~/.vim/bundle/vundle/,$GOROOT/misc/vim
call vundle#rc()
filetype plugin indent on

" Let Vunlde manage Vundle
Bundle 'gmarik/vundle'

Bundle 'camelpunch/test_server'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'

" appearance
syntax on
colorscheme solarized
set background=light
set ruler
set numberwidth=5
set visualbell
set wildmenu " shows possible completions above command line
set list listchars=tab:\ \ ,trail:· " Display tabs and trailing spaces
set number
set showtabline=2

" backspace
set backspace=indent,eol,start

" ctrl-p
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$'
      \ }
let g:ctrlp_show_hidden = 1

" indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" key bindings
let mapleader = ","

" remap ESC to jj
inoremap jj <ESC>

" unset last search pattern by hitting space
nnoremap <space> :noh<CR> <CR>

" changing windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" open vimrc
nmap <silent> <leader>ev :e  $MYVIMRC<cr>
" source vimrc
nmap <silent> <leader>ee :so $MYVIMRC<cr>

" insert a hash rocket
imap <c-l> <space>=><space>

" close the quickfix window
nmap <leader>c :cclose<cr>

" Ag current word
nmap <leader>a *:AgFromSearch<cr>

" c-tags and ctrl-p
nnoremap <leader>. :CtrlPTag<cr>

" bindings for test_server
map  <F12> :w<CR>:RunTest<CR>
map  <F11> :w<CR>:RunTestLine<CR>
map  <F10> :w<CR>:RunTestAgain<CR>

" saving
set noswapfile
set nobackup
set nowb

" save on lost focus, warning for untitled buffers
au BufLeave * silent! wall

" searching
set incsearch             " Find the next match as we type the search
set hlsearch              " Highlight searches by default
set smartcase             " ignore case if lowercase, otherwise match case

" split panes
set splitbelow
set splitright

" tags
set tags=./tags;

" wildignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
