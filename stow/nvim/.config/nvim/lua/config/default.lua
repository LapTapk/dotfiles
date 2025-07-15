vim.opt.nu = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

vim.keymap.set("n", "<leader>e", function()
    vim.diagnostic.open_float(0, {
        focusable = false,
        scope = "line",
        source = "always",
        severity_sort = "true"
    })
end, {desc = "Show line diagnostics"})
