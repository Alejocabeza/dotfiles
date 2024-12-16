return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    opts = {
      options = {
        transparency = true,
      },
    },
    config = function(_, opts)
      require("onedarkpro").setup(opts)
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark_vivid",
    },
  },
}
