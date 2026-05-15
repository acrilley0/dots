return {
  "mfussenegger/nvim-lint",

  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      cpp = { "cpplint" },
    }

    local function try_linting()
      local linters = lint.linters_by_ft[vim.bo.filetype]
      lint.try_lint(linters)
    end

    lint.linters.cpplint.args = vim.list_extend(
      vim.deepcopy(lint.linters.cpplint.args),
      { "--verbose=5 --filter=-legal/copyright" }
    )

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        try_linting()
      end,
    })
  end,
}
