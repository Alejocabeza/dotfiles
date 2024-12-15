return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = false }, -- we set this in options.lua
    words = { enabled = true },
  },
  config = function(_, opts)
    require("snacks").setup(opts)
  end,
  keys = {
    {
      "<leader>n",
      function()
        Snacks.notifier.show_history()
      end,
      desc = "Notification History",
    },
    {
      "<leader>un",
      function()
        Snacks.notifier.hide()
      end,
      desc = "Dismiss All Notifications",
    },
  },
}
