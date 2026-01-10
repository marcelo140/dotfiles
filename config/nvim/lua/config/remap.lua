vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>yw", '"+yiW', { desc = "Yank word to clipboard" })
vim.keymap.set("v", "<leader>y", '"+y')

vim.keymap.set('n', '<leader>yp', function()
  vim.fn.setreg('+', vim.fn.expand('%:.'))
end, { desc = 'Copy file path (cwd-relative) to clipboard' })
