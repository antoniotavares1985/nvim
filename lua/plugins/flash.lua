return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  -- stylua: ignore
  keys = {
    { "<leader>f", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "[F]lash Find" },
  },
}
