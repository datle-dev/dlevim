local o = vim.opt

o.breakindent = true
o.clipboard = "unnamed"
o.completeopt = { "menuone", "noselect", "noinsert" }
o.cursorline = true
o.expandtab = true
o.fillchars = { eob = " " }
o.ignorecase = true
o.incsearch = true
o.linebreak = true
o.list = true
o.number = true
o.relativenumber = true
o.scrolloff = 8
o.shiftwidth = 4
o.signcolumn = "yes"
o.smartcase = true
o.smartindent = true
o.softtabstop = -1
o.tabstop = 4
o.termguicolors = true
o.timeoutlen = 400
o.undofile = true
o.undolevels = 10000
o.updatetime = 1000
o.winborder = "single"

-- after 1s, show diagnostic as floating window
-- underline errors and show signs in gutter
vim.diagnostic.config({
	signs = true,
	underline = true,
	update_in_insert = false,
	virtual_text = false,
})
