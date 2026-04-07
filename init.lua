vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("core.autocmd")
require("core.keymaps")
require("core.options")

require("plugins.colorscheme")
require("plugins.conform")
require("plugins.flash")
require("plugins.fzf_lua")
require("plugins.mason")
require("plugins.mini")
require("plugins.snacks")
require("plugins.todo_comments")

vim.lsp.enable({
	"basedpyright",
	"lua_ls",
	"marksman",
	"ols",
	"rust_analyzer",
})
