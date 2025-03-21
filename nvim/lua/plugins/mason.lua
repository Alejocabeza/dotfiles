return {
	"williamboman/mason.nvim",
	event = "VeryLazy",
	cmd = "Mason",
	keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
	build = ":MasonUpdate",
	opts = {
		ensure_installed = {
			"stylua",
			"blade-formatter",
			"prettier",
			"eslint_d",
			"jq",
			"tlint",
			"pint",
			"luacheck",
			"sqlfluff"
		},
	},
	config = function(_, opts)
		local mason = require("mason")
		local mr = require("mason-registry")

		mason.setup(opts)

		mr:on("package:install:success", function()
			vim.defer_fn(function()
				-- trigger FileType event to possibly load this newly installed LSP server
				vim.api.nvim_command("doautocmd FileType")
			end, 100)
		end)

		mr.refresh(function()
			for _, tool in ipairs(opts.ensure_installed) do
				local p = mr.get_package(tool)
				if not p:is_installed() then
					p:install()
				end
			end
		end)
	end,
}
