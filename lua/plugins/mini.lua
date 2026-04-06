vim.pack.add({
	"https://github.com/echasnovski/mini.ai",
	"https://github.com/echasnovski/mini.clue",
	"https://github.com/echasnovski/mini.completion",
	"https://github.com/echasnovski/mini.files",
	"https://github.com/echasnovski/mini.icons",
	"https://github.com/echasnovski/mini.pairs",
	"https://github.com/echasnovski/mini.pick",
	"https://github.com/echasnovski/mini.statusline",
	"https://github.com/echasnovski/mini.surround",
})

require("mini.ai").setup()
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
require("mini.completion").setup()
require("mini.files").setup()
require("mini.pairs").setup()
require("mini.pick").setup()
require("mini.icons").setup()
require("mini.statusline").setup()
require("mini.surround").setup()
