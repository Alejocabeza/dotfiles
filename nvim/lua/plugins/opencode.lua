return {
	"sudo-tee/opencode.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-telescope/telescope.nvim",
		"hrsh7th/nvim-cmp",
		"folke/snacks.nvim",
	},
	config = function()
		local opencode = require("opencode")
		if opencode.setup then
			opencode.setup({
				keymap = {
					editor = {
						["<leader>og"] = { "toggle", desc = "Toggle Opencode" },
						["<leader>oi"] = { "open_input", desc = "Open Input" },
						["<leader>oc"] = { "open_output", desc = "Open Output" },
						["<leader>o/"] = { "quick_chat", mode = { "n", "x" }, desc = "Quick Chat (Selection/Line)" },
					},
				},
			})
		end

		-- Keymaps manuales por seguridad si el setup falla o para acceso directo
		vim.keymap.set("n", "<leader>og", function()
			require("opencode").toggle()
		end, { desc = "Toggle Opencode (Manual)" })

		vim.keymap.set({ "n", "x" }, "<leader>os", function()
			require("opencode").quick_chat()
		end, { desc = "Opencode Quick Chat (Selection)" })
	end,
}
