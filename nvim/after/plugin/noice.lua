local true_height = vim.api.nvim_list_uis()[1]["height"]
local height = math.floor(vim.api.nvim_list_uis()[1]["height"]/2)

local function calculateHeight()
    if height > 15 then
        return 10
    else
        return (height - 5) + (true_height % 2)
    end
end

require("noice").setup({
    lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            --  ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
    },
    -- you can enable a preset for easier configuration
    presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = false, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
    },
    views = {
        cmdline_popup = {
            position = {
                row =  height,
                col = "50%",
            },
            size = {
                width = 60,
                height = "auto",
            },
        },
        popupmenu = {
            relative = "editor",
            position = {
                row = height + 3,
                col = "50%",
            },
            size = {
                width = 60,
                height = calculateHeight(),
            },
            border = {
                style = "rounded",
                padding = { 0, 1 },
            },
            win_options = {
                winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
            },
        },
    },
    routes = {
        {
            filter = {
                event = "msg_show",
                kind = "search_count",
            },
            opts = { skip = true },
        },
    },
})

require("lualine").setup({
    sections = {
        lualine_x = {
            {
                require("noice").api.statusline.mode.get,
                cond = require("noice").api.statusline.mode.has,
                color = { fg = "#ff9e64" },
            }
        },
    },
})
