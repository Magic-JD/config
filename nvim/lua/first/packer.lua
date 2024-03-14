-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Smooth scrolling
    use 'karb94/neoscroll.nvim'
    -- rg learning and support
    use "mangelozzi/rgflow.nvim"
    -- Adding a global note that can be accessed anywhere
    use 'backdround/global-note.nvim'
    -- Color theme
    use 'folke/tokyonight.nvim'
    -- Highlights only the paragraph that you are focused on
    use "folke/twilight.nvim"
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
    -- Training for nvim surround
    use({
        "roobert/surround-ui.nvim",
        dependencies = {
            "kylechui/nvim-surround",
            "folke/which-key.nvim",
        },
    })
    -- Range highlighting
    use "winston0410/range-highlight.nvim"
    -- Fuzzy find for nvim. Searches well and works nicely with grep
    use 'nvim-telescope/telescope.nvim'
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
    -- Adding support for refactoring.
    use "ThePrimeagen/refactoring.nvim"
    -- See changes through files
    use('mbbill/undotree')
    -- Git support
    use('tpope/vim-fugitive')
    -- Lazy git for good ui integration
    use("kdheepak/lazygit.nvim")
    -- Makes the number change color with the status bar
    use {
        'mawkler/modicator.nvim',
        after = 'tokyonight.nvim', -- Add your colorscheme plugin here
    }
    -- Cool file manager? and folder navigation
    use "echasnovski/mini.files"
    -- Add a terminal inside neovim in case you want to check something
    use {"akinsho/toggleterm.nvim", tag = '*'}

    -- ZONE BACKGROUND
    -- Add coloring to log files
    use 'fei6409/log-highlight.nvim'
    -- Automatic completion of symbol pairs
    use {
        "windwp/nvim-autopairs",
    }
    -- Tabline
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
    -- Highlights lines that are too long
    use 'lcheylus/overlength.nvim'
    -- Makes text input and renaming look nicer and behave smoother.
    use {'stevearc/dressing.nvim'}
    -- Pretty status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    -- Git gutter lines
    use 'lewis6991/gitsigns.nvim'

    -- ZONE LSP
    -- Sets up visual aids for LSP
    use "dnlhc/glance.nvim"
    -- This configures text snippets. 
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'L3MON4D3/LuaSnip'},
            {'saadparwaiz1/cmp_luasnip'},
            {'rafamadriz/friendly-snippets'},
            {'onsails/lspkind.nvim'},
        }
    }
    -- Mason for lsp install.
    use {
        'williamboman/mason.nvim',
        requires = {
            {'williamboman/mason-lspconfig.nvim'},
            {'WhoIsSethDaniel/mason-tool-installer.nvim'},
        }
    }
    -- lsp configuration and application
    use {
        "neovim/nvim-lspconfig",
        requires = {
            { "hrsh7th/cmp-nvim-lsp" },
            { "antosha417/nvim-lsp-file-operations" },
        }
    }
end)
