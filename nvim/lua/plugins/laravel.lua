local dir_path = vim.fn.expand("~/code/plugins/laravel.nvim")
local dir_exists = vim.fn.isdirectory(dir_path) == 1

return {
  "adalessa/laravel.nvim",
  dir = dir_exists and dir_path or nil,
  dependencies = {
    "tpope/vim-dotenv",
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "kevinhwang91/promise-async",
  },
  cmd = { "Laravel" },
  event = { "VeryLazy" },
  opts = {
    lsp_server = "phpactor",
    features = {
      pickers = {
        provider = "snacks",
      },
    },
  },
  config = true,
}
