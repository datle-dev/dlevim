# dlevim

This is my neovim config, which uses the native `vim.pack.add()` to manage plugins.
Neovim 0.12 is required and is considered experimental as of March 19, 2026.

## nvim-treesitter

I encountered several issues getting `nvim-treesitter` to work.
The working configuration is as follows:

1. Add plugin with `vim.pack.add({"https://github.com/nvim-treesitter/nvim-treesitter"})` without specifying the version or branch
2. Initiate setup with `require("nvim-treesitter").setup()` without referencing the `configs` module
3. Install parsers with `require("nvim-treesitter").install({ "<parser>", "<parser>", etc... })`
4. In config root, include `ftplugin/<filetype>.lua` for each filetype
5. Add `vim.treesitter.start()` for each `<filetype>.lua` as well as any other config options like indents or folds

Ensure that `tree-sitter-cli` is installed with the system package manager so that it can actually compile parsers.
