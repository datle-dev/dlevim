return {
	{
		"https://github.com/echasnovski/mini.ai",
		opts = {},
	},
	{
		"https://github.com/echasnovski/mini.clue",
		config = function()
			require("mini.clue").setup({
				clues = {
					{ mode = "n", keys = "<leader>f", desc = "+fzf-lua" },
					-- { mode = "n", keys = "<leader>g", desc = "+grapple" },
					{ mode = "n", keys = "<leader>l", desc = "+flash" },
					-- { mode = "n", keys = "<leader>p", desc = "+pick" },
					{ mode = "n", keys = "<leader>s", desc = "+snacks" },
					-- { mode = "n", keys = "<leader>t", desc = "+trouble" },
					require("mini.clue").gen_clues.square_brackets(),
					require("mini.clue").gen_clues.builtin_completion(),
					require("mini.clue").gen_clues.g(),
					require("mini.clue").gen_clues.marks(),
					require("mini.clue").gen_clues.registers(),
					require("mini.clue").gen_clues.windows(),
					require("mini.clue").gen_clues.z(),
				},
				triggers = {
					{ mode = { "n", "x" }, keys = "<leader>" },
					{ mode = "n", keys = "[" },
					{ mode = "n", keys = "]" },
					{ mode = "i", keys = "<C-x>" },
					{ mode = { "n", "x" }, keys = "g" },
					{ mode = { "n", "x" }, keys = "'" },
					{ mode = { "n", "x" }, keys = "`" },
					{ mode = { "n", "x" }, keys = '"' },
					{ mode = { "i", "c" }, keys = "<C-r>" },
					{ mode = "n", keys = "<C-w>" },
					{ mode = { "n", "x" }, keys = "z" },
				},
				window = {
					delay = 0,
				},
			})
		end,
	},
	{
		"https://github.com/echasnovski/mini.completion",
		opts = {},
	},
	{
		"https://github.com/echasnovski/mini.files",
		opts = {},
	},
	{
		"https://github.com/echasnovski/mini.icons",
		opts = {},
	},
	{
		"https://github.com/echasnovski/mini.pairs",
		opts = {},
	},
	{
		"https://github.com/echasnovski/mini.pick",
		opts = {},
	},
	{
		"https://github.com/echasnovski/mini.statusline",
		opts = {},
	},
	{
		"https://github.com/echasnovski/mini.surround",
		opts = {},
	},
}
