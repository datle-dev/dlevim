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

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("tree-sitter-enable", { clear = true }),
  callback = function(args)
    local lang = vim.treesitter.language.get_lang(args.match)
    if not lang or not vim.treesitter.language.add(lang) then return end

    if vim.treesitter.query.get(lang, "highlights") then vim.treesitter.start(args.buf) end

    if vim.treesitter.query.get(lang, "indents") then
      vim.opt_local.indentexpr = 'v:lua.require("nvim-treesitter").indentexpr()'
    end

    if vim.treesitter.query.get(lang, "folds") then
      vim.opt_local.foldmethod = "expr"
      vim.opt_local.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    end
  end,
})
