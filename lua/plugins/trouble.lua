return {
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
      {
        "<leader>tx",
        "<cmd>Trouble diagnostics toggle<CR>",
        desc = "trouble diag",
      },
      {
        "<leader>tf",
        "<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
        desc = "trouble buffer",
      },
      {
        "<leader>ts",
        "<cmd>Trouble symbols toggle focus=false<CR>",
        desc = "trouble symbols",
      },
      {
        "<leader>tl",
        "<cmd>Trouble loclist toggle<CR>",
        desc = "trouble loclist",
      },
      {
        "<leader>tq",
        "<cmd>Trouble qflist toggle<CR>",
        desc = "trouble quickfix",
      },
    },
  },
}
