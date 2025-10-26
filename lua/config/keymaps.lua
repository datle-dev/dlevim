local map = vim.keymap.set

-- move to window with <C>-h/j/k/l
map("n", "<C-h>", "<C-w>h", { desc = "go to left window", remap = true } )
map("n", "<C-j>", "<C-w>j", { desc = "go to down window", remap = true } )
map("n", "<C-k>", "<C-w>k", { desc = "go to up window", remap = true } )
map("n", "<C-l>", "<C-w>l", { desc = "go to right window", remap = true } )

-- clear search highlight (last search remains on search register)
map("n", "<leader>/", ":noh<CR>", { desc = "clear search highlight", noremap = true } )
