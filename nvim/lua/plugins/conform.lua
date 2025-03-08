return {
	"stevearc/conform.nvim",
	event = "VeryLazy",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			blade = {'blade-formatter'},
			json = {"jq"},
			php = {"pint"},
			typescript = {"prettier"},
			typescriptreact = {"prettier"},
			javascript = {"prettier"},
			javascriptreact = {"prettier"}
		},
	},
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format()
			end,
			desc = "Format file",
		},
	},
}
