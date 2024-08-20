vim.cmd("colorscheme catppuccin")

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.wrap = true
vim.opt.smartindent = true
vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.api.nvim_set_keymap('n', '<leader>nn', ':!global-note<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>ts', ':!ts<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>tw', ':!tw<cr>', {noremap = true})
