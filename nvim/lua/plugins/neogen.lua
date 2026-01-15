return {
	"danymat/neogen",
	config = true,
	-- Uncomment next line if you want to follow only stable versions
	-- version = "*"
	keys = {
		{
			"<leader>nf",
			function()
				require("neogen").generate({ type = "func" })
			end,
			desc = "Generate DocBlock (Function)",
		},
		{
			"<leader>nc",
			function()
				require("neogen").generate({ type = "class" })
			end,
			desc = "Generate DocBlock (Class)",
		},
		{
			"<leader>nd",
			function()
				require("neogen").generate()
			end,
			desc = "Generate DocBlock (Context)",
		},
	},
	opts = {
		snippet_engine = "luasnip",
	},
}
