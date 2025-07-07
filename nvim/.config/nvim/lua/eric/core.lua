vim.wo.number = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = true

vim.opt.updatetime= 40

vim.opt.colorcolumn = "80"

vim.opt.swapfile = false
vim.opt.backup = false

vim.o.autoread = true
-- Automatically check for file changes every second
vim.fn.timer_start(1000, function()
  vim.api.nvim_command('checktime')
end, {['repeat'] = -1})

vim.opt.clipboard = "unnamedplus"

vim.api.nvim_set_keymap("n", "p", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "P", '"+P', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "p", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "P", '"+P', { noremap = true, silent = true })
