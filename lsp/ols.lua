---@brief
---
--- https://github.com/DanielGavin/ols
---
--- `Odin Language Server`.

---@type vim.lsp.Config
return {
  cmd = { 'ols' },
  filetypes = { 'odin' },
  root_dir = function(bufnr, on_dir)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    local root = vim.fs.root(fname, { 'ols.json', '.git' })
    print("OLS root:", root)
    if root then
      on_dir(root)
    end
  end,
}
