return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "stylua",
      "blade-formatter",
      "prettier",
      "eslint_d",
      "shfmt",
      "jq",
      "tlint",
      "pint",
      "luacheck",
      "sqlfluff",
    })
  end,
}
