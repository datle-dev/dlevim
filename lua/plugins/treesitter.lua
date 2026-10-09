vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

local languages = {
    "bash",
    "c",
    "diff",
    "fish",
    "lua",
    "ini",
    "json",
    "odin",
    "python",
    "toml",
    "rust",
    "yaml",
}

local nts = require("nvim-treesitter")

nts.install(languages)
nts.setup({
    highlight = { enable = true },
})
