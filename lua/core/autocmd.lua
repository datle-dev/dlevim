vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.hl.hl_op()
        if vim.v.event.regname == "+" or vim.v.event.regname == "" then
            local copy_plus = require("vim.ui.clipboard.osc52").copy("+")
            copy_plus(vim.v.event.regcontents)
        end
        if vim.v.event.regname == "*" then
            local copy_star= require("vim.ui.clipboard.osc52").copy("*")
            copy_star(vim.v.event.regcontents)
        end
	end,
})

vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		vim.diagnostic.open_float(nil, { focus = false })
	end,
})
