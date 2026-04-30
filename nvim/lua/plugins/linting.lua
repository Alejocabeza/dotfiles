return {
	"mfussenegger/nvim-lint",
	opts = {
		events = { "BufWritePost", "BufReadPost", "InsertLeave" },
		linters_by_ft = {
			markdown = { "markdownlint" },
			sql = { "sqlfluff" },
			lua = { "luacheck" },
			php = { "tlint" },
            typescript = { "biome", "eslint_d" },
            typescriptreact = { "biome", "eslint_d" },
            javascript = { "biome", "eslint_d" },
            javascriptreact = { "biome", "eslint_d" },
            vue = { "biome", "eslint_d" },
            svelte = { "biome", "eslint_d" },
            astro = { "biome", "eslint_d" },
			dockerfile = { "hadolint" },
			json = { "jsonlint", "biome" },
		},
		linters = {
			biome = {
				cmd = "biome",
				name = "biome",
				args = { "lint", "--stdin-file-path", "$TEXT" },
				stdin = true,
			},
			eslint_d = {
				-- Extend builtin eslint_d linter with a condition so it's used when biome is not configured
				name = "eslint_d",
				condition = function(ctx)
					if vim.fn.executable("eslint_d") == 0 then
						return false
					end
					local patterns = {".eslintrc", ".eslintrc.js", ".eslintrc.cjs", ".eslintrc.json", ".eslintrc.yml", ".eslintrc.yaml"}
					for _, p in ipairs(patterns) do
						if vim.loop.fs_stat(ctx.dirname .. "/" .. p) then
							return true
						end
					end
					local pkg = ctx.dirname .. "/package.json"
					local f = io.open(pkg, "r")
					if f then
						local content = f:read("*a")
						f:close()
						if content:match('"eslintConfig"') or content:match('"eslint"') then
							return true
						end
					end
					return false
				end,
			},
		},
	},
	config = function(_, opts)
		local M = {}
		local lint = require("lint")
		if opts.linters then
			for name, linter in pairs(opts.linters) do
				if type(linter) == "table" then
					if type(lint.linters[name]) == "table" then
						lint.linters[name] = vim.tbl_deep_extend("force", lint.linters[name], linter)
						if type(linter.prepend_args) == "table" then
							lint.linters[name].args = lint.linters[name].args or {}
							vim.list_extend(lint.linters[name].args, linter.prepend_args)
						end
					else
						lint.linters[name] = linter
					end
				end
			end
		end
		lint.linters_by_ft = opts.linters_by_ft
		function M.debounce(ms, fn)
			local timer = vim.uv.new_timer()
			return function(...)
				local argv = { ... }
				timer:start(ms, 0, function()
					timer:stop()
					vim.schedule_wrap(fn)(unpack(argv))
				end)
			end
		end
		function M.lint()
			local names = lint._resolve_linter_by_ft(vim.bo.filetype)
			names = vim.list_extend({}, names)
			if #names == 0 then
				vim.list_extend(names, lint.linters_by_ft["_"] or {})
			end
			vim.list_extend(names, lint.linters_by_ft["*"] or {})
			local ctx = { filename = vim.api.nvim_buf_get_name(0) }
			if ctx.filename == "" then
				return
			end
			ctx.dirname = vim.fn.fnamemodify(ctx.filename, ":h")
			names = vim.tbl_filter(function(name)
				local linter = lint.linters[name]
				if not linter then
					require("snacks").notify("Linter " .. name .. " not found", "error", "Linting")
				end
				return linter and not (type(linter) == "table" and linter.condition and not linter.condition(ctx))
			end, names)
			if #names > 0 then
				lint.try_lint(names)
			end
		end
		vim.api.nvim_create_autocmd(opts.events, {
			group = vim.api.nvim_create_augroup("nvim-lint", { clear = true }),
			callback = M.debounce(500, M.lint),
		})
	end,
}
