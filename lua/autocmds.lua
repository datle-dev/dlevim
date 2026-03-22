local function augroup(name)
  return vim.api.nvim_create_augroup("dle_" .. name, { clear = true })
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
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})

-- dim buffer during flash usage and make jump label high contrast
vim.api.nvim_create_autocmd("ColorScheme", {
  group = augroup("flash_styling"),
  callback = function()
    vim.api.nvim_set_hl(0, "FlashBackdrop", { link = "Comment" })
    vim.api.nvim_set_hl(0, "FlashLabel", {
      fg = "#1d2623",
      bg = "#ffd780",
      bold = true,
    })
  end,
})

-- -- override colortheme and ensure mini cursorword underlines word under cursor
-- vim.api.nvim_create_autocmd("ColorScheme", {
--   group = augroup("minicursorword_fix"),
--   callback = function()
--     vim.api.nvim_set_hl(0, "MiniCursorword", {
--       underline = true,
--       bg = "NONE",
--     })
--     vim.api.nvim_set_hl(0, "MiniCursorwordCurrent", {
--       underline = true,
--       bg = "NONE",
--     })
--   end,
-- })
--
