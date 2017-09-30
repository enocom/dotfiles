"   ___  ____  ____  _________  ____ ___
"  / _ \/ __ \/ __ \/ ___/ __ \/ __ `__ \
" /  __/ / / / /_/ / /__/ /_/ / / / / / /
" \___/_/ /_/\____/\___/\____/_/ /_/ /_/
"
"              _                                  _____
"       _   __(_)___ ___        _________  ____  / __(_)___ _
"      | | / / / __ `__ \______/ ___/ __ \/ __ \/ /_/ / __ `/
"      | |/ / / / / / / /_____/ /__/ /_/ / / / / __/ / /_/ /
"      |___/_/_/ /_/ /_/      \___/\____/_/ /_/_/ /_/\__, /
"                                                   /____/
"------------------------------------------------------------------------------
" GENERAL
"------------------------------------------------------------------------------
set encoding=utf-8            " Ensure encoding is UTF-8
set nocompatible              " Disable Vi compatability

"------------------------------------------------------------------------------
" VUNDLE CONFIG
"------------------------------------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/vundle " Set the runtime path to include Vundle
call vundle#begin()           " Initialize vundle
Plugin 'gmarik/vundle'        " Let Vundle manage Vundle
Plugin 'ctrlpvim/ctrlp.vim'   " Quick file navigation
Plugin 'tpope/vim-commentary' " Quickly comment lines out and in
Plugin 'tpope/vim-fugitive'   " Help formatting commit messages
Plugin 'fatih/vim-go'         " Helpful plugin for Golang dev
call vundle#end()             " Complete vunde initialization

" enable filetype detection
" and indent detection (based on filetype)
filetype plugin indent on

"------------------------------------------------------------------------------
" CTRL-P CONFIG
"------------------------------------------------------------------------------
" ignore anything not tracked by git
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1        " include hidden files in results
let g:ctrlp_working_path_mode = '' " stop setting git repo as root path

"------------------------------------------------------------------------------
" VIM-GO CONFIG
"------------------------------------------------------------------------------
let g:go_template_autocreate = 0   " disable template for new files
let g:go_fmt_command = "goimports" " run goimports after gofmt

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

"------------------------------------------------------------------------------
" APPEARANCE
"------------------------------------------------------------------------------
syntax on                      " enable syntax highlighting
colorscheme default            " set color scheme
set background=dark            " assume a light background
set ruler                      " show ruler in lower right
set hlsearch                   " highlight all search results
let loaded_matchparen=1        " turn off match paren highlighting
set list listchars=tab:\ \ ,trail:· " display tabs and trailing spaces
let g:netrw_banner = 0         " remove banner in Explore mode. Toggle with I

"------------------------------------------------------------------------------
" Behavior
"------------------------------------------------------------------------------
autocmd BufWritePre * :%s/\s\+$//e " strip trailing whitespace on save
autocmd BufLeave * silent! wall    " save on lost focus

set autowrite                      " write before ':make' commands
set wildmenu                       " show possible completions on command line
set backspace=indent,eol,start     " configure backspace behavior
set textwidth=80                   " set width of all text

set noswapfile                     " disable swap files
set nowb                           " disable writing backup

set smartcase                      " ignore case if lower, otherwise match case

set splitbelow                     " split panes on the bottom
set splitright                     " split panes to the right

" indentation, spaces only, convert tabs
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

"------------------------------------------------------------------------------
" LEADER SHORTCUTS
"------------------------------------------------------------------------------
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

" allow for quick swapping between dark and light background
map <leader>x :let &background = ( &background == "dark"? "light" : "dark" )<CR>
