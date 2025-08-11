return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      panel = { enabled = true },
      suggestion = { enabled = true },
    },
  },
  {
    "giuxtaposition/blink-cmp-copilot",
    dependencies = { "zbirenbaum/copilot.lua" },
  },
}
