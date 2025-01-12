return {
  {
    "sainnhe/sonokai",
    priority = 1000,
    config = function()
      vim.g.sonokai_transparent_background = "1"
      vim.g.sonokai_enable_italic = "1"
      vim.g.sonokai_style = "andromeda"
    end,
  },
  {
    "wuelnerdotexe/vim-enfocado",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.enfocado_style = "neon"
    end,
  },
  { "catppuccin/nvim", lazy = true, name = "catppuccin", opts = { transparent_background = true } },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
}
