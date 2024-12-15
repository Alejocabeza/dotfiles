return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      theme = "auto",
      icons_enabled = true,
      globalstatus = true,
    },
    extensions = { "quickfix", "fugitive" },
    sections = {
      lualine_a = { { "mode", upper = true } },
      lualine_b = { { "branch", icon = "" }, "db_ui#statusline" },
      lualine_c = { { "filename", file_status = true, path = 1 } },
      lualine_x = {
        "diagnostics",
        "diff",
        {
          require("noice").api.status.mode.get,
          cond = require("noice").api.status.mode.has,
          color = { fg = "#ff9e64" },
        },
        {
          require("lazy.status").updates,
          cond = require("lazy.status").has_updates,
          color = { fg = "ff9e64" },
        },
      },
      lualine_y = { "filetype" },
      lualine_z = { "location" },
    },
    winbar = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    inactive_winbar = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
  },
  config = function(_, opts)
    require("lualine").setup(opts)
  end,
}
