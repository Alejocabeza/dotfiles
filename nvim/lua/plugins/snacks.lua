return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		bigfile = { enabled = true },
		dashboard = require("setup.snacks.dashboard"),
		explorer = { enabled = false },
		indent = { enabled = true },
		input = { enabled = true },
		image = { enabled = true },
		picker = { enabled = true },
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = true },
		statuscolumn = { enabled = true },
		toggle = { enabled = true },
		words = { enabled = false },
	},
	keys = {
		-- Pickers
		{
			"<leader>ff",
			function()
				Snacks.picker.smart({ multi = { "buffers", "files" } })
			end,
			desc = "Find Files",
		},
		{
			"<leader>fd",
			function()
				Snacks.picker.treesitter()
			end,
			desc = "Find Treesitter Nodes",
		},
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Find Buffers",
		},
		{
			"<leader>fg",
			function()
				Snacks.picker.grep()
			end,
			desc = "Find Grep",
		},
		{
			"<leader>fw",
			function()
				Snacks.picker.grep({ search = vim.fn.expand("<cword>") })
			end,
			desc = "Find Grep current word",
		},
		{
			"<leader>fh",
			function()
				Snacks.picker.help()
			end,
			desc = "Find Help",
		},
		{
			"<leader>fs",
			function()
				Snacks.picker.git_status()
			end,
			desc = "Find Modified Files",
		},
		{
			"<leader>:",
			function()
				Snacks.picker.command_history()
			end,
			desc = "Find Command",
		},
		{
			"<leader>fi",
			function()
				Snacks.picker.icons()
			end,
			desc = "Find Icon",
		},
		{
			"<c-i>",
			function()
				Snacks.picker.icons()
			end,
			desc = "Find Icon",
			mode = "i",
		},
		-- Explorer
		{
			"<F6>",
			function()
				Snacks.explorer()
			end,
			desc = "Explorer",
			mode = { "n", "i" },
		},
		-- Scratch
		{
			"<leader>.",
			function()
				Snacks.scratch()
			end,
			desc = "Open the scratch buffer",
		},
		{
			"<leader>S",
			function()
				Snacks.scratch.select()
			end,
			desc = "Open the scratch buffer selector",
		},
		-- Misc
		{
			"<leader>bd",
			function()
				Snacks.bufdelete()
			end,
			desc = "Delete buffer",
		},
		{
			"<leader>cR",
			function()
				Snacks.rename.rename_file()
			end,
			desc = "Rename file",
		},
		{
			"<c->",
			function()
				Snacks.terminal()
			end,
			desc = "Toggle terminal",
			mode = { "n", "t" },
		},
		{
			"[[",
			function()
				Snacks.words.jump(vim.v.count1)
			end,
			desc = "Next Reference",
		},
		{
			"]]",
			function()
				Snacks.words.jump(-vim.v.count1)
			end,
			desc = "Prev Reference",
		},
		-- GIT
		{
			"<leader>gB",
			function()
				Snacks.gitbrowse()
			end,
			desc = "Git Browse",
			mode = { "n", "v" },
		},
		{
			"<leader>gb",
			function()
				Snacks.git.blame_line()
			end,
			desc = "Git Blame Line",
			mode = { "n", "v" },
		},
		{
			"<leader>gf",
			function()
				Snacks.lazygit.log_file()
			end,
			desc = "Lazygit Current File History",
		},
		{
			"<leader>gg",
			function()
				Snacks.lazygit()
			end,
			desc = "Lazygit",
		},
		{
			"<leader>gl",
			function()
				Snacks.lazygit.log()
			end,
			desc = "Lazygit Log (cwd)",
		},
		-- Notifications
		{
			"<leader>nn",
			function()
				Snacks.notifier.show_history()
			end,
			desc = "Notification history",
		},
		{
			"<leader>nh",
			function()
				Snacks.notifier.hide()
			end,
			desc = "Notification Dismiss all",
		},
	},
}
