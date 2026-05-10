return {
  "mfussenegger/nvim-lint",
  enabled = false, -- FIXME: This plugin isn't working the way I want currently

  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      cpp = { "cpplint" },
    }

    local function try_linting()
      local linters = lint.linters_by_ft[vim.bo.filetype]
      lint.try_lint(linters)
    end

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        try_linting()
      end,
    })
  end,
}
