vim.pack.add({ "https://github.com/stevearc/conform.nvim" })

require("conform").setup({
	formatters_by_ft = {
		astro = { "prettier" },
		fortran = {
			-- "fprettify",
			"findent",
		},
		lua = { "stylua" },
		python = { "ruff_format" },
		rust = { "rustfmt" },
		odin = { "odinfmt" },
	},
	formatters = {
		-- fprettify = {
		-- 	prepend_args = { "--indent", "2", "--line-length", "72" },
		-- },
		findent = {
			prepend_args = { "--indent", "2" },
		},
	},
})
