local opt = vim.opt

opt.autoindent = true
opt.breakindent = true
opt.clipboard = "unnamedplus"
opt.completeopt = { "menu", "menuone", "noselect" }
opt.confirm = true
opt.cursorline = true
opt.cursorlineopt = "both"
opt.expandtab = true
opt.fillchars = { eob = " " }
opt.foldlevel = 99
opt.ignorecase = true
opt.inccommand = "split"
opt.incsearch = true
opt.infercase = true
opt.laststatus = 3
opt.linebreak = true
opt.list = true
opt.mouse = "a"
opt.number = true
opt.pumborder = "single"
opt.pumheight = 10
opt.relativenumber = true
opt.scrolloff = 8
opt.shiftround = true
opt.shiftwidth = 2
opt.sidescrolloff = 8
opt.showmode = false
opt.signcolumn = "yes"
opt.smartcase = true
opt.smartindent = true
opt.splitbelow = true
opt.splitkeep = "screen"
opt.splitright = true
opt.tabstop = 2
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true
opt.undolevels = 10000
opt.virtualedit = "block"
opt.winborder = "single"
opt.wrap = false

-- after 1s, show diagnostic as floating window
-- underline errors and show signs in gutter
vim.diagnostic.config({
  signs = true,
  underline = true,
  update_in_insert = false,
  virtual_text = false,
})
opt.updatetime = 1000
