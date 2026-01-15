return {
	"Wansmer/treesj",
	keys = {
		{
			"<leader>m",
			function()
				require("treesj").toggle()
			end,
			desc = "Split/Join Block",
		},
		{
			"<leader>J",
			function()
				require("treesj").join()
			end,
			desc = "Join Block",
		},
		{
			"<leader>S",
			function()
				require("treesj").split()
			end,
			desc = "Split Block",
		},
	},
	dependencies = { "nvim-treesitter/nvim-treesitter" }, -- if you install parsers with `nvim-treesitter`
	config = function()
		require("treesj").setup({
			use_default_keymaps = false,
		})
	end,
}
