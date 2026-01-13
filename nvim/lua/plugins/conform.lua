return { -- Autoformat
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = true,
		-- format_on_save = function(bufnr)
		--   local disable_filetypes = { c = true, cpp = true }
		--   if disable_filetypes[vim.bo[bufnr].filetype] then
		--     return nil
		--   else
		--     return {
		--       timeout_ms = 500,
		--       lsp_format = 'fallback',
		--     }
		--   end
		-- end,
		formatters_by_ft = {
			lua = { "stylua" },
			blade = { "blade-formatter" },
			json = { "jq" },
			php = function(bufnr)
				local fname = vim.uri_from_bufnr(bufnr)
				if fname:match("views") then
					return { "blade-formatter" }
				end
				if vim.fn.filereadable(vim.fn.getcwd() .. "/mago.toml" == 1) then
					return { "mango_format" }
				end
				return { "pint" }
			end,
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			javascriptreact = { "prettierd", "prettier", stop_after_first = true },
			typescriptreact = { "prettierd", "prettier", stop_after_first = true },
			vue = { "prettierd", "prettier", stop_after_first = true },
			svelte = { "prettierd", "prettier", stop_after_first = true },
			astro = { "prettierd", "prettier", stop_after_first = true },
			json = { "prettierd", "prettier", stop_after_first = true },
			jsonc = { "prettierd", "prettier", stop_after_first = true },
			html = { "prettierd", "prettier", stop_after_first = true },
			css = { "prettierd", "prettier", stop_after_first = true },
			scss = { "prettierd", "prettier", stop_after_first = true },
		},
	},
}
