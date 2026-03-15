vim.pack.add({ "https://github.com/folke/snacks.nvim" })

require("snacks").setup({
  indent = {
    enabled = true,
    animate = {
      enabled = false,
    },
  },
  scratch = { enabled = true },
  lazygit = { enabled = true },
  terminal = { enabled = true },
})
