require("toggleterm").setup{}


vim.keymap.set("n", "<leader>t", function()
    local dir = vim.api.nvim_buf_get_name(0)

    -- Find the last occurrence of '/'
    local lastSlashIndex = dir:match(".*()/")

    if lastSlashIndex then
        -- Extract the substring before the last '/'
        dir = dir:sub(1, lastSlashIndex - 1)
    end
    -- If no '/' is found, keep the original string
    vim.cmd("ToggleTerm dir=" .. dir)
end, { desc = "Toggle terminal" })
