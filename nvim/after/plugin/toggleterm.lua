require("toggleterm").setup{}


vim.keymap.set("n", "<leader>t", vim.cmd.ToggleTerm, {
  desc = "Toggle terminal",
})
