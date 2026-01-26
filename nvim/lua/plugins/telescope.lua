return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"ahmedkhalf/project.nvim",
	},
	config = function()
		require("telescope").setup({
			extensions = {
				project = {
					base_dirs = {
						"~/dev",
						{ "~/work", max_depth = 4 },
					},
					hidden_files = true,
					theme = "dropdown",
					order_by = "asc",
					search_by = "title",
					sync_with_nvim_tree = true,
				},
			},
		})
		require("telescope").load_extension("projects")
	end,
}