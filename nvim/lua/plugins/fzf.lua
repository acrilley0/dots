return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require('fzf-lua').setup({
      -- Global window options
      winopts = {
        height     = 0.85,            -- Window height
        width      = 0.80,            -- Window width
        row        = 0.35,            -- Window row position (0=top, 1=bottom)
        col        = 0.50,            -- Window column position (0=left, 1=right)
        preview = {
          layout       = 'flex',      -- 'horizontal', 'vertical', or 'flex'
          flip_columns = 120,         -- Flip to vertical if columns < 120
        },
      },
      -- Provider specific options
      files = {
        formatter = 'path.filename_first', -- Show filename before path
      },
      grep = {
        rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 -e",
      },
    })

    local fzf = require('fzf-lua')
    vim.keymap.set('n', '<leader>f', function() fzf.files() end)
    vim.keymap.set('n', '<leader>g', function() fzf.grep_project() end)
    vim.keymap.set('n', 'gr', function() fzf.lsp_references() end)
  end,
}
