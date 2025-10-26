local function augroup(name)
  return vim.api.nvim_create_augroup("dle_" .. name, { clear = true } )
end

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    (vim.hl or vim.highlight).on_yank()
  end,
})

 -- show diagnostic when holding cursor on line
vim.api.nvim_create_autocmd("CursorHold", {
  group = augroup("floating_diagnostic"),
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false } )
  end,
})
