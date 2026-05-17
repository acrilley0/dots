return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  keys = {
    { "/", mode = { "n", "x", "o" }, false },
    { "/", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, false },
    { "r", mode = "o", false },
    { "R", mode = { "o", "x" }, false },
    { "<c-s>", mode = { "c" }, false },
  },
}
