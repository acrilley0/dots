-- return { "neanias/everforest-nvim" }
return { 
  { "sainnhe/gruvbox-material" },
  {
    "binbandit/achroma.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "achroma"
    end,
  }
}
