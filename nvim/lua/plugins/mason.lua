return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "blade-formatter",
      "tlint",
      "jq",
      "pint"
    })
  end,
}
