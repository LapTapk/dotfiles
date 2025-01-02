local function open_nvim_tree()
  vim.cmd('NvimTreeOpen')
  vim.cmd("wincmd h")
end

vim.keymap.set('n', '<C-n>', ':NvimTreeOpen<Enter>')
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
