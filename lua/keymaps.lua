local map = require("core.keymap")

-- base
map.n("<A-h>", "<C-w>h", "go to left window")
map.n("<A-j>", "<C-w>j", "go to down window")
map.n("<A-k>", "<C-w>k", "go to up window")
map.n("<A-l>", "<C-w>l", "go to right window")
map.t("<A-h>", "<C-\\><C-n><C-w>h", "go to left window")
map.t("<A-j>", "<C-\\><C-n><C-w>j", "go to down window")
map.t("<A-k>", "<C-\\><C-n><C-w>k", "go to up window")
map.t("<A-l>", "<C-\\><C-n><C-w>l", "go to right window")

-- clear search highlight (last search remains on search register)
map.n("<leader>/", ":noh<CR>", "clear search highlight")

-- conform
map.n("<leader>k", function()
  require("conform").format({ async = true })
end, "format buffer")

-- flash
map.n("<leader>lj", function()
  require("flash").jump()
end, "flash jump")
map.n("<leader>lt", function()
  require("flash").treesitter()
end, "flash treesitter")

-- fzf-lua
map.n("<leader>fb", "<cmd>FzfLua files<CR>", "fzf-lua files")
map.n("<leader>ff", "<cmd>FzfLua builtin<CR>", "fzf-lua builtin")
map.n("<leader>fg", "<cmd>FzfLua grep<CR>", "fzf-lua grep")
map.n("<leader>fl", "<cmd>FzfLua live_grep<CR>", "fzf-lua live grep")

-- grapple
map.n("<leader>gm", function()
  vim.cmd("Grapple toggle")
  vim.notify("Marked with Grapple")
end, "grapple mark")
map.n("<leader>gn", function()
  vim.cmd("Grapple cycle_tags next")
  vim.notify("Grapple cycle next")
end, "grapple next")
map.n("<leader>go", function()
  vim.cmd("Grapple toggle_tags")
  vim.notify("Opened Grapple UI")
end, "grapple open")
map.n("<leader>gp", function()
  vim.cmd("Grapple cycle_tags prev")
  vim.notify("Grapple cycle previous")
end, "grapple previous")

-- mini.files
map.n("<leader>e", function()
  require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
end, "explorer")

-- mini.pick
map.n("<leader>pb", "<cmd>Pick buffers<CR>", "pick buffers")
map.n("<leader>pf", "<cmd>Pick files<CR>", "pick files")
map.n("<leader>pg", "<cmd>Pick grep<CR>", "pick grep")
map.n("<leader>ph", "<cmd>Pick help<CR>", "pick help")

-- snacks
map.n("<leader>st", function()
  require("snacks").terminal.toggle()
end, "snacks terminal")

-- trouble
map.n("<leader>tb", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", "trouble buffer")
map.n("<leader>tl", "<cmd>Trouble diagnostics loclist toggle<CR>", "trouble loclist")
map.n("<leader>tq", "<cmd>Trouble qflist toggle<CR>", "trouble quickfix")
map.n("<leader>ts", "<cmd>Trouble diagnostics symbols toggle focus=false<CR>", "trouble symbols")
map.n("<leader>tx", "<cmd>Trouble diagnostics toggle<CR>", "trouble diag")
