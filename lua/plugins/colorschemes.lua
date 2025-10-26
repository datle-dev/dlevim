return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("kanagawa")
    end,
  },
  { "neanias/everforest-nvim", lazy = True,} ,
  { "savq/melange-nvim", lazy = True,} ,
  { "xero/miasma.nvim", lazy = True, },
  { "EdenEast/nightfox.nvim", lazy = True, },
  { "AlexvZyl/nordic.nvim", lazy = True, },
}
