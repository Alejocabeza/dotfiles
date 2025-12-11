local dependencies = {
  "nvim-neotest/nvim-nio",
  "nvim-lua/plenary.nvim",
  "antoinemadec/FixCursorHold.nvim",
  "nvim-treesitter/nvim-treesitter",
  "nvim-neotest/neotest-plenary",
}

if require("nixCatsUtils").enableForCategory("laravel") then
  table.insert(dependencies, "V13Axel/neotest-pest")
  table.insert(dependencies, "olimorris/neotest-phpunit")
end

if require("nixCatsUtils").enableForCategory("symfony") then
  table.insert(dependencies, "olimorris/neotest-phpunit")
end

if require("nixCatsUtils").enableForCategory("go") then
  table.insert(dependencies, "fredrikaverpil/neotest-golang")
end

return {
  "nvim-neotest/neotest",
  dependencies = dependencies,
  keys = {
    {
      "<leader>tn",
      function()
        require("neotest").run.run()
      end,
      desc = "Run nearest test",
    },
    {
      "<leader>tl",
      function()
        require("neotest").run.run_last()
      end,
      desc = "Run last test",
    },
    {
      "<leader>tm",
      function()
        require("neotest").summary.run_marked()
      end,
      desc = "Run marked tests",
    },
    {
      "<leader>tf",
      function()
        require("neotest").run.run(vim.fn.expand("%"))
      end,
      desc = "Run tests in current file",
    },
    {
      "<leader>ts",
      function()
        require("neotest").summary.toggle()
      end,
      desc = "Toggle test summary",
    },
    {
      "<leader>to",
      function()
        require("neotest").output.open({ enter = true })
      end,
      desc = "Open test output",
    },
    {
      "<leader>ti",
      function()
        require("neotest").output.open({ enter = true, last_run = true })
      end,
      desc = "Open last test output",
    },
    {
      "<leader>tpo",
      function()
        require("neotest").output_panel.toggle()
      end,
      desc = "Toggle output panel",
    },
    {
      "<leader>tpl",
      function()
        require("neotest").output_panel.clear()
      end,
      desc = "Clear output panel",
    },
  },
  config = function()
    local adapters = {
      require("neotest-plenary"),
    }
    if require("nixCatsUtils").enableForCategory("laravel") then
      table.insert(adapters, require("neotest-pest"))
    end

    if require("nixCatsUtils").enableForCategory("behat") then
      table.insert(adapters, require("neotest-behat"))
    end

    if require("nixCatsUtils").enableForCategory("go") then
      table.insert(
        adapters,
        require("neotest-golang")({
          go_test_args = { "-v", "-count=1" },
        })
      )
    end

    if require("nixCatsUtils").enableForCategory("symfony") then
      table.insert(
        adapters,
        require("neotest-phpunit")({
          phpunit_cmd = function()
            return "bin/phpunit"
          end,
        })
      )
    end

    ---@diagnostic disable-next-line: missing-fields
    require("neotest").setup({
      adapters = adapters,
    })
  end,
}

