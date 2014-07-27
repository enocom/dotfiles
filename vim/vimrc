set nocompatible
set encoding=utf-8

filetype off
set rtp+=~/.vim/bundle/vundle/,$GOROOT/misc/vim
call vundle#begin()
filetype plugin indent on

" Let Vunlde manage Vundle
Plugin 'gmarik/vundle'

Plugin 'camelpunch/test_server'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'

call vundle#end()

" appearance
syntax on
colorscheme default
set background=dark
set ruler
set numberwidth=5
set visualbell
set wildmenu " shows possible completions above command line
set list listchars=tab:\ \ ,trail:· " Display tabs and trailing spaces
set number
set showtabline=2
let loaded_matchparen=1 " turn off match paren highlighting

" backspace
set backspace=indent,eol,start

" ctrl-p
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$|node_modules'
      \ }
let g:ctrlp_show_hidden = 1
" let g:ctrlp_user_command = "find . | grep -v node_modules | grep -v .git/"

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

" test_server mappings
map   <F12> :w<CR>:RunTest<CR>
imap  <F12> <ESC><F12>
map   <F11> :w<CR>:RunTestLine<CR>
imap  <F11> <ESC><F11>
map   <F10> :w<CR>:RunTestAgain<CR>
imap  <F10> <ESC><F10>
map   <F9> :w<CR>:RunTestPrevious<CR>
imap  <F9> <ESC><F9>

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
