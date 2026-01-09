-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require('lazy').setup({
    spec = {
        {
            "folke/tokyonight.nvim",
            lazy = false,
        },
        {
            'nvim-treesitter/nvim-treesitter',
            lazy = false,
            branch = 'main',
            build = ':TSUpdate'
        },
        {
            'nvim-telescope/telescope.nvim',
            tag = '0.1.8',
            requires = { { 'nvim-lua/plenary.nvim' } }
        },
        {
            'tpope/vim-commentary',
        },
        {
            'mason-org/mason.nvim',
            opts = {}
        },
        {
            'ziglang/zig.vim',
        },
        { 'hrsh7th/nvim-cmp' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'L3MON4D3/LuaSnip' },
        { 'hrsh7th/cmp-nvim-lua' }, -- source for neovim Lua API.
    },
})

vim.o.winborder = 'rounded'

vim.keymap.set("n", "<Leader>ds", vim.diagnostic.open_float, {
    desc = "Show diagnostic"
})

-- vim.diagnostic.config({
--     virtual_text = true,
-- })

local virtual_text_enabled = true
vim.keymap.set("n", "<leader>dv", function()
    virtual_text_enabled = not virtual_text_enabled
    vim.diagnostic.config({ virtual_text = virtual_text_enabled })
end, { desc = "Toggle diagnostics virtual text" })

vim.cmd.colorscheme('tokyonight')

-- Make it easy to edit and source configuration
vim.keymap.set('n', '<leader>ev', ':edit $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>ee', ':source $MYVIMRC<CR>')

-- make it easy to yank to vim or system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- make it easy to toggle light and dark
vim.keymap.set("n", "<leader>x", function()
    if vim.o.background == "dark" then
        vim.o.background = "light"
    else
        vim.o.background = "dark"
    end
end)

-- format manually because something is broken with auto
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.g.netrw_banner     = 0

vim.opt.mouse          = ""
vim.opt.guicursor      = ""
vim.opt.number         = true
vim.opt.relativenumber = true
vim.opt.tabstop        = 4
vim.opt.softtabstop    = 4
vim.opt.shiftwidth     = 4
vim.opt.expandtab      = true
vim.opt.smartcase      = true
vim.opt.smartindent    = true
vim.opt.splitbelow     = true
vim.opt.splitright     = true
vim.opt.wrap           = false
vim.opt.swapfile       = false
vim.opt.backup         = false
vim.opt.writebackup    = false
vim.opt.hlsearch       = true
vim.opt.incsearch      = true
vim.opt.termguicolors  = true
vim.opt.signcolumn     = "yes"
vim.opt.updatetime     = 50
vim.opt.colorcolumn    = "80"

vim.opt.relativenumber = true

vim.o.winborder        = "rounded"

-- Strip trailing whitespace on save.
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*" },
    command = [[%s/\s\+$//e]],
})

vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*.go',
    callback = function()
        vim.lsp.buf.code_action({
            context = {
                only = { 'source.organizeImports' }
            },
            apply = true
        })
    end
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', function()
    builtin.find_files({ previewer = false })
end, {})
vim.keymap.set('n', '<C-p>', function()
    builtin.git_files({ previewer = false })
end, {})

vim.lsp.config('luals', {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    -- Specific settings to send to the server. The schema is server-defined.
    -- Example: https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            },
            runtime = {
                version = 'LuaJIT',
            }
        }
    }
})
vim.lsp.enable('luals')

vim.lsp.config('gopls', {
    cmd = { 'gopls' },
    filetypes = { 'go', 'gomod', 'gowork' },
})
vim.lsp.enable('gopls')

vim.lsp.config('rust-analyzer', {
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' },
})
vim.lsp.enable('rust-analyzer')

vim.lsp.config('zls', {
    cmd = { 'zls' },
    filetypes = { 'zig' },
})
vim.lsp.enable('zls')

require('nvim-treesitter').install({
    "c",
    "go",
    "lua",
    "rust",
    "zig",
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'go' },
    callback = function() vim.treesitter.start() end,
})
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'rust' },
    callback = function() vim.treesitter.start() end,
})
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'zig' },
    callback = function() vim.treesitter.start() end,
})
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'python' },
    callback = function() vim.treesitter.start() end,
})
