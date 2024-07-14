local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED


vim.keymap.set("n", "<leader>hm", function() harpoon:list():append() end, {desc = "Add a mark on this line"})
vim.keymap.set("n", "<leader>hf", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "Show all harpoon marks"})

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>hn", function() harpoon:list():next({ui_nav_wrap = true}) end, {desc = "Go to next harpoon mark"})
vim.keymap.set("n", "<leader>hb", function() harpoon:list():prev({ui_nav_wrap = true}) end, {desc = "Go to previous harpoon mark"})
