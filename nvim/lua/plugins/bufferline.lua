return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup({
      highlights = {
        background = { bg = 'none' },
        fill = { bg = 'none' },
        buffer_selected = { bg = 'none', fg = '#fab387' },
        buffer_visible = { bg = 'none', fg = '#a6adc8' },
        close_button = { bg = 'none' },
        close_button_selected = { bg = 'none' },
        close_button_visible = { bg = 'none' },
        duplicate = { bg = 'none' },
        duplicate_selected = { bg = 'none' },
        duplicate_visible = { bg = 'none' },
        error = { bg = 'none' },
        error_selected = { bg = 'none' },
        error_visible = { bg = 'none' },
        hint = { bg = 'none' },
        hint_selected = { bg = 'none' },
        hint_visible = { bg = 'none' },
        indicator_selected = { bg = 'none' },
        indicator_visible = { bg = 'none' },
        info = { bg = 'none' },
        info_selected = { bg = 'none' },
        info_visible = { bg = 'none' },
        modified = { bg = 'none' },
        modified_selected = { bg = 'none' },
        modified_visible = { bg = 'none' },
        numbers = { bg = 'none' },
        numbers_selected = { bg = 'none' },
        numbers_visible = { bg = 'none' },
        offset_separator = { bg = 'none' },
        pick = { bg = 'none' },
        pick_selected = { bg = 'none' },
        pick_visible = { bg = 'none' },
        separator = { bg = 'none' },
        separator_selected = { bg = 'none' },
        separator_visible = { bg = 'none' },
        tab = { bg = 'none' },
        tab_close = { bg = 'none' },
        tab_selected = { bg = 'none' },
        tab_separator = { bg = 'none' },
        tab_separator_selected = { bg = 'none' },
        trunc_marker = { bg = 'none' },
        warning = { bg = 'none' },
        warning_selected = { bg = 'none' },
        warning_visible = { bg = 'none' },
      },
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
