require("bufferline").setup{}


vim.keymap.set("n", "<leader>bf", function()
    vim.cmd("BufferLinePick")
end, { desc = "Switch Tab" })

vim.keymap.set("n", "<leader>brr", function()
    vim.cmd("BufferLineCloseRight")
end, { desc = "Close all buffers right of current" })

vim.keymap.set("n", "<leader>bll", function()
    vim.cmd("BufferLineCloseLeft")
end, { desc = "Close all buffers left of current" })

vim.keymap.set("n", "<leader>bcc", function()
    vim.cmd("BufferLineCloseOthers")
end, { desc = "Close all other buffers" })

vim.keymap.set("n", "<leader>bD", function()
    vim.cmd("BufferLinePickClose")
end, { desc = "Switch Tab" })
