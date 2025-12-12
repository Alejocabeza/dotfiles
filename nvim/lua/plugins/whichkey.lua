return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "helix",
    icons = {
      rules = {
        { plugin = "laravel.nvim", icon = " ", color = "red" },
        { plugin = "nvim-dap-ui", icon = " ", color = "green" },
        { pattern = "obsidian", icon = " ", color = "blue" },
      },
    }
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
