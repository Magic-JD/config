-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Smooth scrolling
    use 'karb94/neoscroll.nvim'
    -- Adding a global note that can be accessed anywhere
    use 'backdround/global-note.nvim'
    -- Color theme
    use 'folke/tokyonight.nvim'
    -- Highlights only the paragraph that you are focused on
    use 'junegunn/limelight.vim'
    -- Zen mode
    use 'junegunn/goyo.vim'
    -- Adds icons
    use 'nvim-tree/nvim-web-devicons'
    -- Adds Colors
    use 'NvChad/nvim-colorizer.lua'
    -- ChatGPT integration
    use({
        "jackMort/ChatGPT.nvim",
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "folke/trouble.nvim",
            "nvim-telescope/telescope.nvim"
        }
    })
    -- Gives hints about what key you can use
    use 'folke/which-key.nvim'
    -- Enables quickly and easily changing the surrounding "{[(
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    })
    -- Fuzzy find for nvim. Searches well and works nicely with grep
    use { "ibhagwan/fzf-lua",
        requires = { "nvim-tree/nvim-web-devicons" }
    }
    -- For syntax parsing
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
    -- For interacting with treesitter
    use({
        "nvim-treesitter/nvim-treesitter-textobjects",
        after = "nvim-treesitter",
        requires = "nvim-treesitter/nvim-treesitter",
    })
    -- This one is for handling plugin concurrency
    use "nvim-lua/plenary.nvim"
    -- Harpoon for file hopping
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
    -- See changes through files
    use('mbbill/undotree')
    -- Git support
    use('tpope/vim-fugitive')
    -- Pretty status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    -- Makes the number change color with the status bar
    use {
        'mawkler/modicator.nvim',
        after = 'tokyonight.nvim', -- Add your colorscheme plugin here
    }
    -- Cool file manager? and folder navigation
    use "stevearc/oil.nvim"
    -- Add a terminal inside neovim in case you want to check something
    use {"akinsho/toggleterm.nvim", tag = '*'}
    -- LSP
    use {
        'nvim-java/nvim-java',
        requires = {
            'nvim-java/lua-async-await',
            'nvim-java/nvim-java-core',
            'nvim-java/nvim-java-test',
            'nvim-java/nvim-java-dap',
            'MunifTanjim/nui.nvim',
            'neovim/nvim-lspconfig',
            'mfussenegger/nvim-dap',
            {
                'williamboman/mason.nvim',
                opts = {
                    registries = {
                        'github:nvim-java/mason-registry',
                        'github:mason-org/mason-registry',
                    },
                },
            }
        },
    }
    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lua'},
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'}
        }
    }
    -- Adds visual lines for lsp feedback
    use("https://git.sr.ht/~whynothugo/lsp_lines.nvim")
end)
