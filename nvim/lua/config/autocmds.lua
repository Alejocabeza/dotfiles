vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
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

-- Resize splits if window got resized
vim.api.nvim_create_autocmd("VimResized", {
	desc = "Auto-resize splits",
	group = vim.api.nvim_create_augroup("auto-resize", { clear = true }),
	callback = function()
		vim.cmd("wincmd =")
	end,
})

-- Highlight trailing whitespace
vim.api.nvim_create_autocmd("BufWinEnter", {
	desc = "Highlight trailing whitespace",
	group = vim.api.nvim_create_augroup("highlight-trailing-whitespace", { clear = true }),
	callback = function()
		vim.cmd("match ErrorMsg /\\s\\+$/")
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

-- Auto Save Inactive Buffers
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
	desc = "Auto-save inactive buffers",
	group = vim.api.nvim_create_augroup("auto-save-inactive-buffers", { clear = true }),
	callback = function()
		if vim.bo.modified and not vim.bo.readonly then
			vim.cmd("silent! write")
		end
	end,
})

-- Handle Large Files
vim.api.nvim_create_autocmd("BufReadPre", {
	desc = "Handle Large Files",
	group = vim.api.nvim_create_augroup("handle-large-files", { clear = true }),
	callback = function()
		local size = vim.fn.getfsize(vim.fn.expand("%"))
		if size > 1024 * 1024 then --> 1MB
			vim.cmd("syntax off")
			vim.opt_local.swapfile = false
			vim.opt_local.undofile = false
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
