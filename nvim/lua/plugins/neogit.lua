return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration
		"nvim-telescope/telescope.nvim", -- optional
	},
	config = true,
	keys = {
		{ "<leader>gs", "<cmd>Neogit<cr>", desc = "Neogit Status" },
		{ "<leader>gc", "<cmd>Neogit commit<cr>", desc = "Neogit Commit" },
		{ "<leader>gp", "<cmd>Neogit push<cr>", desc = "Neogit Push" },
	},
}
