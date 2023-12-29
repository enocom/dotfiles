local ensure_packer = function()
    local fn = vim.fn
    local install_path =
        fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        print("Installing Packer...")
        fn.system({
            'git',
            'clone',
            '--depth', '1',
            'https://github.com/wbthomason/packer.nvim',
            install_path,
        })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)
    use('wbthomason/packer.nvim')

    use({
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        requires = { { 'nvim-lua/plenary.nvim' } }
    })

    use('folke/tokyonight.nvim')
    use('tpope/vim-commentary')

    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })

    use({
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
            { 'hrsh7th/cmp-nvim-lua' }, -- source for neovim Lua API.
        }
    })

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

vim.g.mapleader = " "

-- Make it easy to edit and source configuration
vim.keymap.set('n', '<leader>ev', ':edit $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>ee', ':source $MYVIMRC<CR>')

-- Keymap to get to Ex mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- make it easy to yank to vim or system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

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

lsp.ensure_installed({
    'gopls',
    'lua_ls',
    'rust_analyzer',
    'terraformls',
    'pylsp',
})

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

vim.cmd.colorscheme('tokyonight-night')

require('nvim-treesitter.configs').setup {
    -- A list of parser names, or "all"
    ensure_installed = {
        "javascript",
        "typescript",
        "go",
        "lua",
        "rust",
        "zig",
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
