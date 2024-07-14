vim.keymap.set("n", "<leader>gg", function()
    vim.cmd("LazyGitCurrentFile")
end, { desc = "Lazy Git" })
