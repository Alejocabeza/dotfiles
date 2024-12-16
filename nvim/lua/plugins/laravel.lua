return {
  "adalessa/laravel.nvim",
  dependencies = {
    "tpope/vim-dotenv",
    "nvim-telescope/telescope.nvim",
    "MunifTanjim/nui.nvim",
    "kevinhwang91/promise-async",
  },
  cmd = { "Laravel" },
  keys = {
    { "<leader>la", ":Laravel artisan<cr>", desc = "[L]aravel [A]rtisan" },
    { "<leader>lr", ":Laravel routes<cr>", desc = "[L]aravel [R]outes" },
  },
  event = { "VeryLazy" },
  opts = {},
  config = true,
}
