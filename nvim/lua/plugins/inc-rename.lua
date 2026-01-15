return {
	"smjonas/inc-rename.nvim",
	event = "LspAttach",
	keys = {
		{
			"<leader>rn",
			function()
				return ":IncRename " .. vim.fn.expand("<cword>")
			end,
			desc = "Incremental Rename",
			mode = "n",
			expr = true,
		},
	},
	config = function()
		require("inc_rename").setup()
	end,
}
