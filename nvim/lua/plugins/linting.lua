return {
  "mfussenegger/nvim-lint",
  opts = function(_, opts)
    opts.linters_by_ft = {
      markdown = { "markdownlint" },
      sql = { "sqlfluff" },
      lua = { "luacheck" },
      php = { "tlint" },
      typescript = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      javascript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
    }
    return opts
  end,
}
