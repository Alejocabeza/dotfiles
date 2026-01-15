return {
	"folke/todo-comments.nvim",
	event = { "BufReadPost", "BufNewFile" },
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		-- defaults are mostly fine
	},
    keys = {
      { "]t", function() require("todo-comments").jump_next() end, desc = "Next Todo Comment" },
      { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous Todo Comment" },
      { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Todo (Trouble)" },
      { "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIXME,ids<cr>", desc = "Todo/Fixme (Trouble)" },
      { "<leader>st", function() Snacks.picker.grep({ pattern = "TODO|FIXME" }) end, desc = "Todo (Snacks)" },
      { "<leader>sT", function() Snacks.picker.grep({ pattern = "TODO|FIXME|HACK|PERF" }) end, desc = "Todo/Fixme/Hack (Snacks)" },
    },
}
