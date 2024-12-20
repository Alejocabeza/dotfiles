return {
	-- LSP
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			opts.servers = vim.tbl_deep_extend("force", opts.servers or {}, {
				eslint = {
					settings = {
						workingDirectory = { mode = "auto" },
						format = { enable = true },
					},
				},
			})
		end,
	},
}
