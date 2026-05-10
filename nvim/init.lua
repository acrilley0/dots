require("config.lazy")

vim.lsp.config("clangd", {
  flags = {}
})
vim.lsp.enable({"clangd"})

vim.cmd("colorscheme everforest")

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', {silent = true})

-- Keeps the transparency settings of the terminal
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" }) -- Non-current windows
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
    vim.bo.expandtab = true
  end,
})
