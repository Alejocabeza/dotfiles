return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    -- Configura los linters por tipo de archivo
    lint.linters_by_ft = {
      fish = { "fish" },
      markdown = { "markdownlint" },
    }

    -- Crea el grupo de autocmds para ejecutar el linter automáticamente
    local lint_augroup = vim.api.nvim_create_augroup("Lint", { clear = true })
    vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        if vim.opt_local.modifiable:get() then
          lint.try_lint()
        end
      end,
    })
  end,
}
