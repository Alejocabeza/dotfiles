local formatters = {
  lua = { "stylua", lsp_format = "fallback" },
  nix = { "nixfmt" },
  json = { "jq" },
  typescript = { "prettier" },
  typescriptreact = { "prettier" },
  javascript = { "prettier" },
  javascriptreact = { "prettier" },
  sql = { "sqlfluff" },
}

if require("nixCatsUtils").enableForCategory("go") then
  formatters.go = { "gofmt", "goimports" }
end

if require("nixCatsUtils").enableForCategory("laravel") then
  formatters.blade = { "blade-formatter" }
  formatters.php = function(bufnr)
    -- check if the name contains views use blade formatter
    local fname = vim.uri_from_bufnr(bufnr)
    if fname:match("views") then
      return { "blade-formatter" }
    end

    -- check if there is a mago.toml file in the root directory
    if vim.fn.filereadable(vim.fn.getcwd() .. "/mago.toml") == 1 then
      return { "mago_format" }
    end

    return { "pint" }
  end
end

return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = formatters,
  },
  init = function()
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({ lsp_format = "fallback" })
      end,
      desc = "Format with Conform",
    },
  },
}
