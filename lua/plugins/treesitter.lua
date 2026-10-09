vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

local languages = {
    "c",
    "lua",
    "json",
    "odin",
    "python",
    "rust",
}

local nts = require("nvim-treesitter")

nts.install(languages)
nts.setup({
    highlight = { enable = true },
})
