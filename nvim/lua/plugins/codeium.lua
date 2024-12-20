return {
	{
		"Exafunction/codeium.nvim",
		cmd = "Codeium",
		build = ":Codeium Auth",
		opts = {
			enable_cmp_source = vim.g.ai_cmp,
			virtual_text = {
				enabled = not vim.g.ai_cmp,
				key_bindings = {
					accept = "<Tab>", -- handled by nvim-cmp / blink.cmp
					next = "<M-]>",
					prev = "<M-[>",
				},
			},
		},
	},
	{
		"hrsh7th/nvim-cmp",
		optional = true,
		dependencies = { "codeium.nvim" },
		opts = function(_, opts)
			table.insert(opts.sources, 1, {
				name = "codeium",
				group_index = 1,
				priority = 100,
			})
		end,
	},
}
