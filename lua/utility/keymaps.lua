local M = {}

local default_opts = { noremap = true, silent = true }

local function merge_opts(desc, opts)
	opts = opts or {}
	opts.desc = desc
	return vim.tbl_extend("force", default_opts, opts)
end

function M.map(mode, lhs, rhs, desc, opts)
	vim.keymap.set(mode, lhs, rhs, merge_opts(desc, opts))
end

-- mode helpers
function M.n(lhs, rhs, desc, opts)
	M.map("n", lhs, rhs, desc, opts)
end
function M.v(lhs, rhs, desc, opts)
	M.map("v", lhs, rhs, desc, opts)
end
function M.i(lhs, rhs, desc, opts)
	M.map("i", lhs, rhs, desc, opts)
end
function M.t(lhs, rhs, desc, opts)
	M.map("t", lhs, rhs, desc, opts)
end

return M
