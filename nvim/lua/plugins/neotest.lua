return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "nvim-neotest/neotest-jest",
    "marilari88/neotest-vitest",
    "olimorris/neotest-phpunit",
    "V13Axel/neotest-pest",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-jest"),
        require("neotest-vitest"),
        require("neotest-phpunit"),
        require("neotest-pest"),
      },
    })
  end,
}
