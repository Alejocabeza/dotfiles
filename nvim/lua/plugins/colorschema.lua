return {
  {
    "wuelnerdotexe/vim-enfocado",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.enfocado_style = "neon"
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "enfocado",
    },
  }
}
