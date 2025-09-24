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
            'nvim-telescope/telescope.nvim',
            tag = '0.1.5',
            requires = { { 'nvim-lua/plenary.nvim' } }
        },
        { 'tpope/vim-commentary' },
        { 'ziglang/zig.vim' },
        {
            'nvim-treesitter/nvim-treesitter',
            run = function()
                local ts_update = require('nvim-treesitter.install').update({
                    with_sync = true
                })
                ts_update()
            end,
        },
        { 'neovim/nvim-lspconfig' },
        {
            'williamboman/mason.nvim',
            build = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        { 'williamboman/mason-lspconfig.nvim' },
        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'L3MON4D3/LuaSnip' },
        { 'hrsh7th/cmp-nvim-lua' }, -- source for neovim Lua API.
        {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v2.x',
        }
    },
})

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

local lsp = require("lsp-zero").preset({
    name = "recommended",
    float_border = 'single',
})

lsp.on_attach(function(_, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

lsp.ensure_installed({ 'lua_ls' })

lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.setup()

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', function()
    builtin.find_files({ previewer = false })
end, {})

vim.keymap.set('n', '<C-p>', function()
    builtin.git_files({ previewer = false })
end, {})

require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "c",
        "go",
        "lua",
        "rust",
        "zig",
    },
    auto_install = false,
    highlight = {
        enable = true,
    },
}
