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
}
