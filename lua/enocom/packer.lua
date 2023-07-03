vim.cmd.packadd([[packer.nvim]])

return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')

    use({
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    })

    use({
        'NLKNguyen/papercolor-theme',
        config = function()
            vim.cmd([[ colorscheme PaperColor ]])
        end
    })

    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
    use('theprimeagen/harpoon')
    use('tpope/vim-fugitive')
    use('tpope/vim-commentary')

    use({
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    })
end)
