return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = {
      lua = { "stylua" },
      blade = { "blade-formatter" },
      json = { "jq" },
      php = { "pint" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      sql = { "sqlfluff" },
    }
    return opts
  end,
}
