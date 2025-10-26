return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      indent = {
        enabled = true,
        animate = {
          enabled = false,
        },
      },
      scratch = { enabled = true },
      lazygit = { enabled = true },
    },
    keys = {
      { "<leader>.", function() Snacks.scratch() end, desc = "toggle scratch buffer" },
      { "<leader>S", function() Snacks.scratch.select() end, desc = "select scratch buffer" },
    },
  },
}
