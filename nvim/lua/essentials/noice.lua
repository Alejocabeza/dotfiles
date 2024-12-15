return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  event = "VeryLazy",
  opts = {
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    presets = {
      bottom_search = true,
      long_message_to_split = true,
      -- inc_rename = false,
      lsp_doc_border = true,
    },
    cmdline = {
      view = "cmdline",
    },
    messages = {
      enabled = true,
      view = "notify",
      view_error = "notify",
      view_warn = "notify",
      view_history = "messages",
      view_search = false,
    },
    routes = {
      {
        view = "split",
        filter = {
          cmdline = "G",
        },
        opts = {
          enter = true,
          render = "plain",
          format = { "{message}" },
          replace = true,
          close = {
            events = { "BufLeave" },
            keys = { "q" },
          },
        },
      },
      {
        view = "split",
        filter = {
          cmdline = "Notifications",
        },
        opts = {
          enter = true,
          render = "plain",
          format = { "{message}" },
          replace = true,
          close = {
            events = { "BufLeave" },
            keys = { "q" },
          },
        },
      },
      {
        view = "mini",
        filter = {
          cmdline = "w",
        },
      },
      {
        view = "mini",
        filter = {
          find = "Config Change Detected. Reloading...",
        },
      },
      {
        view = "mini",
        filter = {
          any = {
            {
              event = "msg_show",
              find = "lines yanked",
            },
            {
              event = "msg_show",
              find = "more lines",
            },
            {
              event = "msg_show",
              find = "direnv:",
            },
            {
              find = "laravel.sail.",
            },
            {
              find = "Pattern not found",
            },
            {
              event = "msg_show",
              kind = "",
              find = "change;",
            },
          },
        },
      },
    },
  },
}
