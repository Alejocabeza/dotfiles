return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false,
  build = "make",
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
  opts = {
    -- Ollama Config
    -- provider = "ollama",
    -- ollama = {
    --   model = "deepseek-r1",
    -- },
    -- behaviour = {
    --   enable_cursor_planning_mode = true,
    -- },
    -- Gemini Config
    -- provider = "gemini",
    -- gemini = {
    --   model = "gemini-2.5-pro-exp-03-25",
    --   temperature = 0,
    --   max_tokens = 4096,
    -- },
    -- Copilot
    provider = "copilot",
    file_selector = {
      provider = "snacks",
    },
  },
  config = function(_, opts)
    require("avante").setup(opts)
  end,
}
