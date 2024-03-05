local global_note = require("global-note")
global_note.setup()

vim.keymap.set("n", "<leader>n", global_note.toggle_note, {
  desc = "Toggle global note",
})
