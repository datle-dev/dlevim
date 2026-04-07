# dlevim

This is a version for Neovim 0.12.0.

- native package management with `vim.pack`
- pre-compiled parser DLLs
- queries copied from archived repo of `nvim-treesitter`

## vim commands

`:che[ckhealth] {plugins}`

Examples
```
:che
:checkhealth
:checkhealth foo bar
:checkhealth vim.lsp vim.treesitter
:checkhealth vim*
```

`:restart`
`:so[urce] {file}`
