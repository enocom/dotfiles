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
"

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
Plugin 'airblade/vim-gitgutter' " Shows git dirty state in gutter
call vundle#end()             " Complete vunde initialization

" enable filetype detection
" and indent detection (based on filetype)
filetype plugin indent on

"------------------------------------------------------------------------------
" CTRL-P CONFIG
"------------------------------------------------------------------------------
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$|node_modules'
            \ }
let g:ctrlp_show_hidden = 1
" stop setting git repo as root path
let g:ctrlp_working_path_mode = ''

"------------------------------------------------------------------------------
" VIM-GO CONFIG
"------------------------------------------------------------------------------
let g:go_fmt_command = "goimports"
autocmd FileType go nmap <Leader>dt <Plug>(go-def-tab)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
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
set background=dark            " assume a dark background
set ruler                      " show ruler in lower right
set numberwidth=3              " use three spaces for line numbers
let loaded_matchparen=1        " turn off match paren highlighting
set list listchars=tab:\ \ ,trail:· " display tabs and trailing spaces

"------------------------------------------------------------------------------
" Behavior
"------------------------------------------------------------------------------
autocmd BufWritePre * :%s/\s\+$//e " strip trailing whitespace on save
autocmd BufLeave * silent! wall    " save on lost focus

set autowrite                      " write before ':make' commands
set wildmenu                       " show possible completions on command line
set backspace=indent,eol,start     " configure backspace behavior

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
" close the quickfix window
nmap <leader>c :cclose<cr>
" go to next quick fix window entry
map <C-n> :cn<CR>
" go to previous quick fix window entry
map <C-m> :cp<CR>
