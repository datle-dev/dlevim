return {
	"https://github.com/stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "ruff_format" },
				rust = { "rustfmt" },
				odin = { "odinfmt" },
			},
		})
	end,
}
