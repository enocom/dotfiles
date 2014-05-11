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

" vim-rspec
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>

" c-tags and ctrl-p
nnoremap <leader>. :CtrlPTag<cr>

map  <F12> :w<CR>:RunTest<CR>
imap <F12> <ESC><F12>
map  <F11> :w<CR>:RunTestLine<CR>
imap <F11> <ESC><F11>
map  <F10> :w<CR>:RunTestAgain<CR>
imap <F10> <ESC><F10>
map  <F9>  :w<CR>:RunTestPrevious<CR>
imap <F9>  <ESC><F9>
