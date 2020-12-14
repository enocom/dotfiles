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
Plugin 'tpope/vim-fugitive'   " Help formatting commit messages
Plugin 'tpope/vim-commentary' " Make commenting lines in and out easy
Plugin 'ctrlpvim/ctrlp.vim'   " Fuzzy finder
Plugin 'fatih/vim-go'         " When writing Go
Plugin 'rust-lang/rust.vim'   " When writing Rust
Plugin 'python-mode/python-mode'
call vundle#end()             " Complete vunde initialization

" enable filetype detection
" and indent detection (based on filetype)
filetype plugin indent on

"------------------------------------------------------------------------------
" APPEARANCE
"------------------------------------------------------------------------------
syntax on                      " enable syntax highlighting
colorscheme default            " set color scheme
set background=dark            " assume a dark background
set ruler                      " show ruler in lower right
set list listchars=tab:\ \ ,trail:· " display tabs and trailing spaces
let loaded_matchparen=1        " turn off match paren highlighting
let g:netrw_banner = 0         " remove banner in Explore mode (toggle with I and i)
set number

"------------------------------------------------------------------------------
" Behavior
"------------------------------------------------------------------------------
autocmd BufWritePre * :%s/\s\+$//e " strip trailing whitespace on save
autocmd BufLeave * silent! wall    " save on lost focus

set autowrite                  " write before ':make' commands
set wildmenu                   " show possible completions on command line
set backspace=indent,eol,start " configure backspace behavior
set textwidth=80               " set width of all text
set noswapfile                 " disable swap files
set nowb                       " disable writing backup
set smartcase                  " ignore case if lower, otherwise match case
set splitbelow                 " split panes on the bottom
set splitright                 " split panes to the right
set smartindent                " add extra indent based on previous line
set autoindent                 " indent line based on previous line
set shiftwidth=4               " assume 4 spaces for a tab
set expandtab                  " expand those tabs to spaces
set tabstop=4                  " number of spaces a tab counts for in file
set softtabstop=4              " number of spaces a tab counts for editing
set smarttab                   " translate tabs into shiftwidth worth of spaces

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

" make it easy to switch background from dark to light
map <leader>x :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" Plugin configuration
" RustFmt on save
let g:rustfmt_autosave = 1
" Ctrl-p autocompletes what git tracks
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" Run GoImports on save
let g:go_imports_autosave = 1

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
let g:go_list_type = "quickfix"
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
autocmd FileType go nmap <leader>t :GoAlternate<CR>
