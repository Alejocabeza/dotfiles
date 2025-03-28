return {
  "tpope/vim-sleuth",
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },
  {
    "direnv/direnv.vim",
    init = function()
      vim.g.direnv_silent_load = 1
    end,
  },
  "adalessa/php-lsp-utils",
  {
    "tribela/transparent.nvim",
    event = "VimEnter",
    config = true,
  },
  { "nvzone/volt", lazy = true },
  { "nvzone/menu", lazy = true },
  "nvim-lua/plenary.nvim",
  "nvim-lua/popup.nvim",
  "MunifTanjim/nui.nvim",
  "mg979/vim-visual-multi",
  {
    "declancm/maximize.nvim",
    config = true,
  },
  { "Bilal2453/luvit-meta", lazy = true },
  "jwalton512/vim-blade",
  {
    "tpope/vim-dispatch",
    cmd = { "Make", "Dispatch" },
  },
  "lewis6991/impatient.nvim",
  "tpope/vim-surround",
  "tpope/vim-repeat",
  "tpope/vim-rhubarb",
  "tpope/vim-dotenv",
  "tpope/vim-eunuch",
  "folke/twilight.nvim",
  "tpope/vim-surround",
  "tpope/vim-dispatch",
}
