set nocompatible " turn off vi compatibility
set encoding=utf-8

" =============== Good Look ======================
syntax on
colorscheme zenburn
set number
set visualbell

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

" ======== Display tabs and trailing spaces =======
set list listchars=tab:\ \ ,trail:·

" ======== Mappings ===============================
let mapleader = ","
" =============== Old School ======================
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" insert mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" =============== Setup GUI ========================
if has("gui_running")
  set guioptions=egmrt
  set guioptions-=r
  set guifont=Monaco:h18
  set gcr=a:blinkon0 " turn off cursor blink
endif


" =============== Shortcuts ========================
" Navigate between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" ========= Source the vimrc file ==================
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
