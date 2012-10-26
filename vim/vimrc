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
colorscheme roku
set number
set numberwidth=5
set visualbell
" always display tabs
set showtabline=2
" shows possible completions above command line
set wildmenu
" Display tabs and trailing spaces
set list listchars=tab:\ \ ,trail:·
" Use syntax based code folding
set foldmethod=syntax

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
let mapleader = ","
" tempting remap of command key
" nnoremap ; :

" remap ESC
inoremap jj <ESC>

" =============== changing windows ========================
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" =============== vimrc ========================
nmap <silent> <leader>ev :e  $MYVIMRC<cr> " open .vimrc
nmap <silent> <leader>ee :so $MYVIMRC<cr> " source .vimrc

" =============== xmpfilter ========================
nmap <buffer> <leader>m  <Plug>(xmpfilter-mark)
xmap <buffer> <leader>m  <Plug>(xmpfilter-mark)
nmap <buffer> <leader>e  <Plug>(xmpfilter-run)
xmap <buffer> <leader>e  <Plug>(xmpfilter-run)

" =============== tabs =============================
map <leader>nt :tabnew<cr>
map <leader>ct :tabclose<cr>
map <leader>ot :tabonly<cr>
map <leader>xt :tabnext<cr>
map <leader>pt :tabprevious<cr>

" Show syntax highlighting groups for word under cursor
nmap <C-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
