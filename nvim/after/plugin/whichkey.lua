vim.o.timeout = true
vim.o.timeoutlen = 300
local wk = require("which-key")
wk.setup {
    -- leave it empty to use the default settings
}
wk.register({
    ["<leader>"] = {
        b = {name="Buffers :white_check_mark: 📑"},
        bl = {name="Close left"},
        br = {name="Close right"},
        bc = {name="Close other buffers"},

        c = {name="Chat GPT 🤖"},

        d = {name="See definition from lsp"},

        f = {name="Find 🔭"},

        h = {name="Harpoon 🔱"},

        r = {name="RipGrep 🌊"},

        g = {name="Git "},

        n = {name="Notes 📝"},
    }}
    )
