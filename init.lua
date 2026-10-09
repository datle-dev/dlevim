vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("core.autocmd")
require("core.keymaps")
require("core.options")
require("core.user_commands")

require("plugins.colorscheme")
require("plugins.conform")
require("plugins.fzf_lua")
require("plugins.leap")
require("plugins.lsp_config")
require("plugins.mason")
require("plugins.render_markdown")
require("plugins.mini")
require("plugins.snacks")
require("plugins.todo_comments")
require("plugins.treesitter")

vim.lsp.enable({
	"lua_ls",
	"marksman",
	"ols",
	"rust_analyzer",
})
