return {
  -- Smooth scrolling
  'karb94/neoscroll.nvim',

  -- Adding a global note that can be accessed anywhere
  'backdround/global-note.nvim',

  -- Color theme
  'folke/tokyonight.nvim',
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "rose-pine/nvim", name = "rose-pine", priority = 1000 },
  'rebelot/kanagawa.nvim',

  -- Highlights only the paragraph that you are focused on
  "folke/twilight.nvim",

  -- Zen mode
  'junegunn/goyo.vim',

  -- Adds icons
  'nvim-tree/nvim-web-devicons',

  -- Adds Colors
  'NvChad/nvim-colorizer.lua',

  -- Mini icons
  'echasnovski/mini.icons',
  -- Gives hints about what key you can use
  'folke/which-key.nvim',

  -- Enables quickly and easily changing the surrounding "{[(
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
  },

  -- Training for nvim surround
  {
    "roobert/surround-ui.nvim",
    dependencies = {
      "kylechui/nvim-surround",
      "folke/which-key.nvim",
    },
  },

  -- Range highlighting
  "winston0410/range-highlight.nvim",

  -- Fuzzy find for nvim. Searches well and works nicely with grep
  'nvim-telescope/telescope.nvim',

  -- For syntax parsing
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

  -- For interacting with treesitter
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
    dependencies = "nvim-treesitter/nvim-treesitter",
  },

  -- This one is for handling plugin concurrency
  "nvim-lua/plenary.nvim",

  -- Harpoon for file hopping
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { {"nvim-lua/plenary.nvim"} }
  },

  -- See changes through files
  'mbbill/undotree',

  -- Git support
  'tpope/vim-fugitive',

  -- Lazy git for good ui integration
  "kdheepak/lazygit.nvim",

  -- Makes the number change color with the status bar
  {
    'mawkler/modicator.nvim',
    dependencies = 'catppuccin', -- Add your colorscheme plugin here
  },

  -- Cool file manager? and folder navigation
  "echasnovski/mini.files",


  -- ZONE BACKGROUND
  -- Add coloring to log files
  'fei6409/log-highlight.nvim',

  -- Automatic completion of symbol pairs
  "windwp/nvim-autopairs",

  -- Tabline
  { 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },

  -- Highlights lines that are too long
  'lcheylus/overlength.nvim',

  -- Makes text input and renaming look nicer and behave smoother.
  'stevearc/dressing.nvim',

  -- Pretty status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
  },

  -- Git gutter lines
  'lewis6991/gitsigns.nvim',

  -- ZONE LSP
  -- Sets up visual aids for LSP
  "dnlhc/glance.nvim",

  -- This configures text snippets. 
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'L3MON4D3/LuaSnip'},
      {'saadparwaiz1/cmp_luasnip'},
      {'rafamadriz/friendly-snippets'},
      {'onsails/lspkind.nvim'},
    }
  },

  -- Mason for lsp install.
  {
    'williamboman/mason.nvim',
    dependencies = {
      {'williamboman/mason-lspconfig.nvim'},
      {'WhoIsSethDaniel/mason-tool-installer.nvim'},
    }
  },

  -- lsp configuration and application
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "antosha417/nvim-lsp-file-operations" },
    }
  },

-- lazy.nvim
{
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    }
}

  -- Personal
  --{
    --dir = '/home/joe/LuaProjects/NoisyVim.nvim',
    --name = 'noisy',
  --},
}
