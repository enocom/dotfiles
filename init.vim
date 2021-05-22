call plug#begin(stdpath('data') . '/plugged')
Plug 'gmarik/vundle'        " Let Vundle manage Vundle
Plug 'tpope/vim-fugitive'   " Help formatting commit messages
Plug 'tpope/vim-commentary' " Make commenting lines in and out easy
Plug 'ctrlpvim/ctrlp.vim'   " Fuzzy finder
Plug 'fatih/vim-go'         " When writing Go
Plug 'rust-lang/rust.vim'   " When writing Rust
Plug 'python-mode/python-mode'
call plug#end()

set noincsearch
set textwidth=80               " set width of all text
set noswapfile                 " disable swap files
set nowb                       " disable writing backup
set number                     " show line numbers
set smartcase                  " ignore case if lower, otherwise match case
set splitbelow                 " split panes on the bottom
set splitright                 " split panes to the right
set smartindent                " add extra indent based on previous line
set shiftwidth=4               " assume 4 spaces for a tab
set expandtab                  " expand those tabs to spaces
set tabstop=4                  " number of spaces a tab counts for in file
set softtabstop=4              " number of spaces a tab counts for editing
" Turn off the highlighting by pressing space
nnoremap <SPACE> :nohls<CR>

autocmd BufWritePre * :%s/\s\+$//e " strip trailing whitespace on save
autocmd BufLeave * silent! wall    " save on lost focus

let g:netrw_banner = 0         " remove banner in Explore mode (toggle with I and i)
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
