return {
	"laytan/cloak.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		enabled = true,
		cloak_character = "*",
		highlight_group = "Comment",
		patterns = {
			{
				file_pattern = { ".env*", "wrangler.toml", ".dev.vars" },
				cloak_pattern = "=.+",
			},
		},
	},
}
