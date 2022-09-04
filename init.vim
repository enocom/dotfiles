call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-commentary'       " Make commenting lines in and out easy
Plug 'tpope/vim-fugitive'         " Git integration
Plug 'tpope/vim-rhubarb'          " GitHub support for fugitive
Plug 'ctrlpvim/ctrlp.vim'         " Fuzzy finder
Plug 'NLKNguyen/papercolor-theme'
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/go.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" set background=light
colorscheme PaperColor
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

let loaded_matchparen = 1
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
" Ctrl-p autocompletes what git tracks
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" setup gopls with lsp
lua <<EOF
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, bufopts)
end

require("lspconfig")['gopls'].setup {
  on_attach = on_attach,
  cmd = {"gopls", "serve"},
  filetypes = {"go", "gomod"},
  root_dir = require("lspconfig/util").root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        fieldalignment = true,
        shadow = true,
        unusedvariable = true,
      },
      staticcheck = true,
    },
  },
}
EOF

lua <<EOF
require('go').setup()

-- Run gofmt + goimport on save
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)

EOF

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

