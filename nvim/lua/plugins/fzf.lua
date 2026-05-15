return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "nvim-mini/mini.icons" },
  ---@module "fzf-lua"
  ---@type fzf-lua.Config|{}
  ---@diagnostic disable: missing-fields
  opts = {},
  ---@diagnostic enable: missing-fields
  keys = {
    {
      "<leader>f", function() require('fzf-lua').files() end,
    },
    {
      "<leader>g", function() require('fzf-lua').grep_project() end,
    },
  },
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
  end,
}
