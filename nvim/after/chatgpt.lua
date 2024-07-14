require("chatgpt").setup()

vim.keymap.set("n", "<leader>cc", function()
    vim.cmd("ChatGPT")
end, { desc = "Activate chat gpt" })
