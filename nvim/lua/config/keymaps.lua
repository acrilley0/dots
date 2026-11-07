vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { silent = true })
vim.keymap.set('n', '<leader>n', '<Cmd>BufferLineCycleNext<Cr>', { desc =  'Go to next buffer' })
vim.keymap.set('n', '<leader>p', '<Cmd>BufferLineCyclePrev<Cr>', { desc =  'Go to prev buffer' })
vim.keymap.set('n', '<leader>c', '<Cmd>bd<Cr>', { desc = 'Close current buffer' })
vim.keymap.set('n', '<leader>c', function()
  local listed = vim.fn.getbufinfo({ buflisted = 1 })
  if #listed <= 1 then
    vim.cmd('confirm qa')
  else
    vim.cmd('confirm bd')
  end
end, { desc = 'Close buffer, or quit if it is the last one' })

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
