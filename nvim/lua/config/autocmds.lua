vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank({ timeout = 100 }) -- PERFORMANCE: Timeout más corto
	end,
})

-- Restore cursor position
vim.api.nvim_create_autocmd("BufReadPost", {
	desc = "Restore cursor position",
	group = vim.api.nvim_create_augroup("restore-cursor", { clear = true }),
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local lcount = vim.api.nvim_buf_line_count(0)
		if mark[1] > 0 and mark[1] <= lcount then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})

-- Close some filetypes with <q>
vim.api.nvim_create_autocmd("FileType", {
	desc = "Close with <q>",
	group = vim.api.nvim_create_augroup("close-with-q", { clear = true }),
	pattern = {
		"PlenaryTestPopup",
		"help",
		"lspinfo",
		"man",
		"notify",
		"qf",
		"query",
		"spectre_panel",
		"startuptime",
		"tsplayground",
		"neotest-output",
		"checkhealth",
		"neotest-summary",
		"neotest-output-panel",
	},
	callback = function(event)
		vim.bo[event.buf].buflisted = false
		vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
	end,
})

-- Resize splits if window got resized (solo en modo interactivo)
vim.api.nvim_create_autocmd("VimResized", {
	desc = "Auto-resize splits",
	group = vim.api.nvim_create_augroup("auto-resize", { clear = true }),
	callback = function()
		vim.cmd("wincmd =")
	end,
})

-- PERFORMANCE: Disable highlight trailing whitespace on large files
vim.api.nvim_create_autocmd("BufReadPre", {
	desc = "Disable expensive features for large files",
	group = vim.api.nvim_create_augroup("large-files", { clear = true }),
	callback = function()
		local size = vim.fn.getfsize(vim.fn.expand("%"))
		if size > 500 * 1024 then -- 500KB - más agresivo
			vim.cmd("syntax off")
			vim.opt_local.swapfile = false
			vim.opt_local.undofile = false
			vim.opt_local.foldmethod = "manual"
			-- Disable treesitter para archivos grandes
			vim.b.ts_highlight = false
		end
	end,
})

-- Set Formatoptions for prose
vim.api.nvim_create_autocmd("FileType", {
	desc = "Set FormatOptions for prose",
	group = vim.api.nvim_create_augroup("format-options", { clear = true }),
	callback = function()
		vim.opt_local.formatoptions:remove("o")
		vim.opt_local.formatoptions:append("n")
	end,
})

-- PERFORMANCE: Auto Save con debounce - menos frecuente
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
	desc = "Auto-save inactive buffers",
	group = vim.api.nvim_create_augroup("auto-save-inactive-buffers", { clear = true }),
	-- Solo ejecutar cada 5 segundos (en vez de más frecuente)
	callback = function()
		if vim.bo.modified and not vim.bo.readonly and vim.bo.buftype == "" then
			vim.cmd("silent! write")
		end
	end,
})

-- Uncompress Compressed Files
vim.api.nvim_create_autocmd({ "BufReadPost", "FileReadPost" }, {
	desc = "Uncompress compressed files",
	group = vim.api.nvim_create_augroup("uncompress", { clear = true }),
	pattern = "*.gz,*.bz2,*.xz",
	callback = function()
		vim.cmd("%!gunzip -c") -- O bunzip2/xz según el tipo
	end,
})

-- Ghostty Config Detection
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	desc = "Detect ghostty config files",
	group = vim.api.nvim_create_augroup("ghostty-detection", { clear = true }),
	pattern = "*/ghostty/config",
	callback = function()
		vim.bo.filetype = "ghostty"
	end,
})
