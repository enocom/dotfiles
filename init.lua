--[[
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
--]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-commentary'       -- make commmenting lines in and out easy
  use 'tpope/vim-fugitive'         -- Git integration
  use 'tpope/vim-rhubarb'          -- GitHub support for fugitive
  use 'ctrlpvim/ctrlp.vim'
  use 'NLKNguyen/papercolor-theme'
  use 'neovim/nvim-lspconfig'
  use 'ray-x/go.nvim'
  use 'python-mode/python-mode'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, bufopts)
end

local nvim_lsp = require('lspconfig')

nvim_lsp.gopls.setup {
  on_attach = on_attach,
  cmd = {"gopls", "serve"},
  filetypes = {"go", "gomod"},
  root_dir = require("lspconfig/util").root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        fieldalignment = true,
        unusedvariable = true,
      },
      staticcheck = true,
    },
  },
}


nvim_lsp.rust_analyzer.setup({
    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})

require('go').setup()


local o = vim.o   -- global option
local wo = vim.wo -- window option
local bo = vim.bo -- buffer option

-- o.background = "light"
o.swapfile      = false
o.writebackup   = false
o.termguicolors = true
o.smartcase     = true
o.splitbelow    = true
o.splitright    = true

wo.number       = true

bo.smartindent  = true
bo.expandtab    = true
bo.shiftwidth   = 4
bo.tabstop      = 4
bo.softtabstop  = 4


vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
-- Run gofmt + goimport on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*.go" },
  command = [[silent! lua require("go.format").goimport() ]],
})
-- Run rust format on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*.rs" },
  command = [[silent! lua vim.lsp.buf.format() ]],
})

vim.cmd("colorscheme PaperColor")
vim.cmd([[ set mouse= ]])

vim.g.mapleader = ","
vim.g.netrw_banner = 0

local map = vim.api.nvim_set_keymap
options = { noremap = true }
map('n', '<C-h>', '<C-w>h', options)
map('n', '<C-j>', '<C-w>j', options)
map('n', '<C-k>', '<C-w>k', options)
map('n', '<C-l>', '<C-w>l', options)

map('n', '<leader>x', ':let &background = ( &background == "dark"? "light" : "dark" )<CR>', options)

map('n', 'C-n', ':cnext<CR>', options)
map('n', 'C-m', ':cprevious<CR>', options)

map('n', '<leader>ev', ':edit $MYVIMRC<CR>', options)
map('n', '<leader>ee', ':source $MYVIMRC<CR>', options)

map('n', '<SPACE>', ':nohls<CR>', options)
