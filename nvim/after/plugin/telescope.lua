local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fF', builtin.find_files, { desc = "Find in files" })
vim.keymap.set('n', '<leader>ff', builtin.git_files, { desc = "Find in git files" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Find with grep" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find in buffers" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find in help" })

local telescope = require("telescope")

telescope.setup {
  extensions = {
    emoji = {
      action = function(emoji)
        vim.api.nvim_put({ emoji.value }, 'c', false, true)
      end,
    }
  },
}
vim.keymap.set('n', '<leader>fe', function ()
    vim.cmd("Telescope emoji")
end, { desc = "Find emoji" })
