return {
	"mfussenegger/nvim-lint",
	event = "VeryLazy",
	opts = {
		events = { "BufWritePost", "BufReadPost", "InsertLeave" },
		linters_by_ft = {
			fish = { "fish" },
			lua = { "luacheck" },
			php = { "tlint" },
			javascript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescript = { "eslint_d" },
			typescriptreact = { "eslint_d" },
		},
	},
	config = function(_, opts)
		local lint = require("lint")
		if lint then
			lint.setup(opts)
		else
			vim.notify("nvim-lint not loaded correctly", vim.log.levels.ERROR)
		end
	end,
}
