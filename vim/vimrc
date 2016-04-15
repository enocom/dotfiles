""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8 " Ensure encoding is UTF-8
set nocompatible   " Disable Vi compatability


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
set rtp+=~/.vim/bundle/vundle " Set the runtime path to include Vundle
call vundle#begin()           " Initialize vundle
Plugin 'gmarik/vundle'        " Let Vundle manage Vundle
Plugin 'ctrlpvim/ctrlp.vim'   " Quick file navigation
Plugin 'tpope/vim-commentary' " Quickly comment lines out and in
Plugin 'tpope/vim-fugitive'   " Help formatting commit messages
Plugin 'fatih/vim-go'
call vundle#end()             " Complete vunde initialization

" enable filetype detection
" and indent detection (based on filetype)
filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrl-p config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_custom_ignore = {
            \ 'file': '\v\.(pyc)$',
            \ 'dir':  '\v[\/]\.(git|hg|svn)$|node_modules'
            \ }
let g:ctrlp_show_hidden = 1
" stop setting git repo as root path
let g:ctrlp_working_path_mode = ''

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-go config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on                      " enable syntax highlighting
colorscheme default            " set color scheme
set background=dark           " assume a light background
set ruler                      " show ruler in lower right
set number                     " show line numbers
set numberwidth=3              " use three spaces for line numbers
let loaded_matchparen=1        " turn off match paren highlighting

set list listchars=tab:\ \ ,trail:· " display tabs and trailing spaces


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Behavior
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePre * :%s/\s\+$//e  " strip trailing whitespace on save

set wildmenu                   " show possible completions above command line
set backspace=indent,eol,start " configure backspace behavior

" disable various backup files
set noswapfile
set nobackup
set nowb

" save on lost focus, warning for untitled buffers
au BufLeave * silent! wall

" searching
set smartcase " ignore case if lowercase, otherwise match case

" split panes below or to the right
set splitbelow
set splitright

" indentation, spaces only, convert tabs
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "," " Use better map leader

" change windows easily
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" quickly Open vimrc
nmap <silent> <leader>ev :edit $MYVIMRC<cr>
" load vimrc into memory
nmap <silent> <leader>ee :source $MYVIMRC<cr>

" close the quickfix window
nmap <leader>c :cclose<cr>
