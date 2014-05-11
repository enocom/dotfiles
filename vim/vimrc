set nocompatible
set encoding=utf-8

filetype off
set rtp+=~/.vim/bundle/vundle/,$GOROOT/misc/vim
call vundle#rc()
filetype plugin indent on

" Let Vunlde manage Vundle
Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'

"""""""""" appearance """"""""""
syntax on
colorscheme custom
set ruler
set numberwidth=5
set visualbell
set wildmenu " shows possible completions above command line
set list listchars=tab:\ \ ,trail:· " Display tabs and trailing spaces
set number
set showtabline=2
set background=dark

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

" easy tab movement
map <left> :tabp<cr>
map <right> :tabn<cr>

" quick save/close/tab
nmap <leader>s :w<cr>
nmap <leader>q :q<cr>
nmap <leader>T :tabnew<cr>

" c-tags and ctrl-p
nnoremap <leader>. :CtrlPTag<cr>

" bindings for test_server
map  <F12> :w<CR>:RunTest<CR>
imap <F12> <ESC><F12>
map  <F11> :w<CR>:RunTestLine<CR>
imap <F11> <ESC><F11>
map  <F10> :w<CR>:RunTestAgain<CR>
imap <F10> <ESC><F10>
map  <F9>  :w<CR>:RunTestPrevious<CR>
imap <F9>  <ESC><F9>

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
" Courtesy of thoughtbot's vim-config
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" tags
set tags=./tags;

" wildignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
