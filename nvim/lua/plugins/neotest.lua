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

if require("nixCatsUtils").enableForCategory("behat") then
	table.insert(dependencies, "nvim-neotest/neotest-vim-test")
	table.insert(dependencies, "vim-test/vim-test")
end

if require("nixCatsUtils").enableForCategory("go") then
	table.insert(dependencies, "fredrikaverpil/neotest-golang")
end

if require("nixCatsUtils").enableForCategory("javascript") then
	table.insert(dependencies, "marilari88/neotest-vitest")
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

		local function add_adapter(adapter)
			if adapter then
				table.insert(adapters, adapter)
			end
		end

		local function safe_require(module_name)
			local ok, module = pcall(require, module_name)
			if ok then
				return module
			else
				vim.notify("Neotest adapter not found: " .. module_name, vim.log.levels.WARN)
				return nil
			end
		end

		if require("nixCatsUtils").enableForCategory("laravel") then
			add_adapter(safe_require("neotest-pest"))
		end

		if require("nixCatsUtils").enableForCategory("behat") then
			local vim_test_adapter = safe_require("neotest-vim-test")
			if vim_test_adapter then
				add_adapter(
					vim_test_adapter({
						ignore_file_types = { "php" }, -- Let phpunit handle php files if needed, or adjust as necessary
					})
				)
			end
		end

		if require("nixCatsUtils").enableForCategory("go") then
			local go_adapter = safe_require("neotest-golang")
			if go_adapter then
				add_adapter(go_adapter({
					go_test_args = { "-v", "-count=1" },
				}))
			end
		end

		if require("nixCatsUtils").enableForCategory("javascript") then
			local vitest_adapter = safe_require("neotest-vitest")
			if vitest_adapter then
				add_adapter(vitest_adapter)
			end
		end

		if require("nixCatsUtils").enableForCategory("symfony") then
			local phpunit_adapter = safe_require("neotest-phpunit")
			if phpunit_adapter then
				add_adapter(phpunit_adapter({
					phpunit_cmd = function()
						return "bin/phpunit"
					end,
				}))
			end
		end

		---@diagnostic disable-next-line: missing-fields
		require("neotest").setup({
			adapters = adapters,
		})
	end,
}
