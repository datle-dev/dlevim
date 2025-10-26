return {
  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function()
      vim.keymap.set({ "n", "x", "o" }, "<leader>l", "<Plug>(leap)", { desc = "leap" } )
      vim.keymap.set({ "n", "x", "o" }, "<leader>L", "<Plug>(leap-anywhere)", { desc = "leap anywhere" } )
    end,
  },
}
