require("config.lazy")
require("config.keymaps")
require("config.options")
require("config.autocmds")

vim.lsp.config("clangd", {
  init_options = {
    fallbackFlags = { "-std=c++23" },
  },
})
vim.lsp.enable({"clangd"})

vim.cmd("colorscheme gruvbox-material")
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#bababa' , bold = true })
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#bababa' , bold = true })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#bababa' , bold = true })

vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "BufferLineBackground", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "BufferLineSeparator", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", { bg = "NONE", ctermbg = "NONE" })

-- Keeps the transparency settings of the terminal
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" }) -- Non-current windows
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

vim.diagnostic.config({ virtual_text = true })

-- Keeps the transparency of the window when changing colorscheme while in neovim
local group = vim.api.nvim_create_augroup("TransparentBg", { clear = true })
vim.api.nvim_create_autocmd("ColorScheme", {
  group = group,
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NonText", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE", ctermbg = "NONE" })
  end,
})
