return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  opts = {
    notify_on_error = false,
    formatters_by_ft = {
      lua = { 'stylua' },
      blade = { 'blade-formatter' },
      json = { 'jq' },
      php = { 'pint' },
      typescript = { 'prettier' },
      typescriptreact = { 'prettier' },
      javascript = { 'prettier' },
      javascriptreact = { 'prettier' },
      sql = { 'sqlfluff' },
    },
  },
  keys = {
    {
      '<leader>cf',
      function()
        require('conform').format()
      end,
      desc = 'Format file',
    },
  },
}
