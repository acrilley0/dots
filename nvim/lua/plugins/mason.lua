return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    opts = {
      -- List language servers you want to be installed automatically
      ensure_installed = { "clangd" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },
    config = function()
      local lspconfig = require("lspconfig")
      -- vim.lsp.config("*", {
      --   on_attach = function(client)
      --     client.server_capabilities.semanticTokensProvider = nil
      --   end,
      vim.api.nvim_create_autocmd("LspAttach", {
	      callback = function(args)
		      local client = vim.lsp.get_client_by_id(args.data.client_id)
		      if client then
			      -- vim.lsp.semantic_tokens.stop(args.buf, args.data.client_id)
			      vim.lsp.semantic_tokens.enable(false)
		      end
	      end,
      })
      vim.api.nvim_create_autocmd("LspAttach", {
	      callback = function(ev)
		      vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

          local opts = { buffer = ev.buf }
		      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	      end
      })
    end,
   },
}
