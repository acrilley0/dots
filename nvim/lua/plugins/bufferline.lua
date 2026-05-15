return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup({
      options = {
        mode = "buffers", -- "buffers" shows file buffers, "tabs" shows actual tabs
        numbers = "ordinal", -- Display ordinal numbers for easy jumping (e.g. 1, 2, 3)
        close_command = "bdelete! %d", -- Command to close a buffer
        right_mouse_command = "bdelete! %d", -- Close buffer on right click
        left_mouse_command = "buffer %d", -- Focus buffer on left click
        indicator = {
          icon = "▎", -- Style of the indicator for the active buffer
          style = "icon",
        },
        buffer_close_icon = "  ",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15, -- Max length of a directory name
        tab_size = 18,
        diagnostics = "nvim_lsp", -- Show LSP errors and warnings at a glance
        diagnostics_indicator = function(count, level)
          local icon = level == "error" and " " or " "
          return " " .. icon .. count
        end,
        offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
        separator_style = "thin", -- "slant", "thick", "thin", or "padded_slant"
        enforce_regular_tabs = false,
        always_show_bufferline = true,
      },
    })
  end,
}
