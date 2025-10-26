return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    opts = {
      ensure_installed = {
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
      },
      auto_install = true,
      highlight = {
        enable = true,
        -- some languages depend on vim's regex highlighting system for indent rules
        -- if you experience weird indent issues, add language to list of
        -- additional_vim_regex_highlighting and disabled languages for indent
        additional_vim_regex_highlighting = {},
      },
      indent = { enable = true, disable = {} },
    },
  },
}
