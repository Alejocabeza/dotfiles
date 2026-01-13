return {
	"ahmedkhalf/project.nvim",
	config = function()
		require("project_nvim").setup({
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			manual_mode = false,
			detection_methods = { "pattern" },
			patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
		})
	end,
}
