-- maybe due to neovim 0.12, but nvim-treesitter setup needs to be as follows
-- - install tree-sitter-cli with package manager
-- - create ftplugin/<filetype>.lua for each filetype
-- - add `vim.treesitter.start()` at minimum so that nvim-treesitter highlighting
--   starts when file is opened
-- - include any additional options like folds or indentation
-- autocmd to start nvim-treesitter on buffer open based on filetype wouldn't work for whatever reason

vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

require("nvim-treesitter").setup()
require("nvim-treesitter").install({
  "bash",
  "c",
  "diff",
  "ini",
  "json",
  "lua",
  "luadoc",
  "markdown",
  "markdown_inline",
  "python",
  "query",
  "regex",
  "rust",
  "toml",
  "vim",
  "vimdoc",
  "yaml",
})
