return {
  {
    "nvim-neotest/neotest",
    dependencies = { "nvim-neotest/neotest-jest", "marilari88/neotest-vitest", "olimorris/neotest-phpunit", "V13Axel/neotest-pest"  },
    opts = function(_, opts)
      table.insert(opts.adapters, require("neotest-jest"))
      table.insert(opts.adapters, require("neotest-vitest"))
      table.insert(opts.adapters, require("neotest-phpunit"))
      table.insert(opts.adapters, require("neotest-pest"))
    end,
  },
}
