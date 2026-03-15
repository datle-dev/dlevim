vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("autocmds")
require("keymaps")
require("options")

require("plugins.colorschemes")
require("plugins.conform")
require("plugins.flash")
require("plugins.fzf-lua")
require("plugins.grapple")
require("plugins.mason")
require("plugins.mini")
require("plugins.snacks")
require("plugins.todo")
require("plugins.treesitter")
require("plugins.trouble")

vim.lsp.enable({
  "lua_ls",
  "marksman",
  "pyright",
  "rust_analyzer",
})
