return {
  "mfussenegger/nvim-lint",
  opts = function (_, opts)
    opts.linters_by_ft = vim.tbl_deep_extend('force', opts.linters_by_ft or {}, {
      php = {"tlint"}
    })
  end
}
