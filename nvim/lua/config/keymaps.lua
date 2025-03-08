-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap

-- General keymaps
-- keymap.set("n", "<leader>wq", ":wq<CR>") -- save and quit
keymap.set("n", "<C-w>", ":q!<CR>", { desc = "Quit without saving" }) -- quit without saving
keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save" }) -- save
keymap.set("n", "<C-Return>", ":!open <c-r><c-a><CR>", { desc = "Open URL under cursor" }) -- open URL under cursor

-- Split window management
keymap.set("n", "sv", "<C-w>v", { desc = "Split Window Vertical" }) -- split window vertically
keymap.set("n", "ss", "<C-w>s", { desc = "Split Window horizontally'" }) -- split window horizontally
-- keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
-- keymap.set("n", "<leader>sx", ":close<CR>") -- close split window
keymap.set("n", "<M-j>", "<C-w>-", { desc = "Make Split Windows Height Shoerter" }) -- make split window height shorter
keymap.set("n", "<M-k>", "<C-w>+", { desc = "Make Split Windows Height Taller" }) -- make split windows height taller
keymap.set("n", "<M-l>", "<C-w>>5", { desc = "Make Split Windows Width Bigger" }) -- make split windows width bigger
keymap.set("n", "<M-h>", "<C-w><5", { desc = "Make Split Windows Width Smaller" }) -- make split windows width smaller

-- Tab management
keymap.set("n", "te", ":tabnew<CR>", { desc = "Open New Tab" }) -- open a new tab
keymap.set("n", "tx", ":tabclose<CR>", { desc = "Close a Tab" }) -- close a tab
keymap.set("n", "<tab>", ":tabn<CR>", { desc = "Next Tab" }) -- next tab keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab
keymap.set("n", "<s-tab>", ":tabprev<CR>", { desc = "Previous Tab" }) -- next tab keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab

-- Diff keymaps
keymap.set("n", "<leader>cc", ":diffput<CR>", { desc = "Put Diff From Current To Other During Diff" }) -- put diff from current to other during diff
keymap.set("n", "<leader>cj", ":diffget 1<CR>", { desc = "Get Diff From Left (Local) During Merge" }) -- get diff from left (local) during merge
keymap.set("n", "<leader>ck", ":diffget 3<CR>", { desc = "Get Diff From Right (Remote) During Merge" }) -- get diff from right (remote) during merge
keymap.set("n", "<leader>cn", "]c", { desc = "Next Diff Hunk" }) -- next diff hunk
keymap.set("n", "<leader>cp", "[c", { desc = "Previous Diff Hunk" }) -- previous diff hunk

-- Quickfix keymaps
keymap.set("n", "<leader>qo", ":copen<CR>", { desc = "Open Quickfix List" }) -- open quickfix list
keymap.set("n", "<leader>qf", ":cfirst<CR>", { desc = "Jump To First Quickfix List Item" }) -- jump to first quickfix list item
keymap.set("n", "<leader>qn", ":cnext<CR>", { desc = "Jump To Next Quickfix List Item" }) -- jump to next quickfix list item
keymap.set("n", "<leader>qp", ":cprev<CR>", { desc = "Jump To Prev Quickfix List Item" }) -- jump to prev quickfix list item
keymap.set("n", "<leader>ql", ":clast<CR>", { desc = "Jump To Last Quickfix List Item" }) -- jump to last quickfix list item
keymap.set("n", "<leader>qc", ":cclose<CR>", { desc = "Close Quickfix List" }) -- close quickfix list

-- Vim-maximizer
keymap.set("n", "sm", ":Maximize<CR>", { desc = "Toggle Maximize Tab" }) -- toggle maximize tab

-- Snacks Explorer
keymap.set("n", "<leader><tab>", function()
	require("snacks").explorer()
end, { desc = "Explorer Toggle" })

-- Snack Picker
keymap.set("n", "<leader>,", function()
	require("snacks").picker.buffers()
end, { desc = "Buffers" })
keymap.set("n", "<leader>/", function()
	require("snacks").picker.grep()
end, { desc = "Grep" })
keymap.set("n", "<leader>:", function()
	require("snacks").picker.command_history()
end, { desc = "History" })
keymap.set("n", "<leader><space>", function()
	require("snacks").picker.smart({ multi = { "buffers", "files" } })
end, { desc = "Smart Picker" })
keymap.set("n", "<leader>fp", function()
	require("snacks").picker.projects()
end, { desc = "Projects" })
keymap.set("n", "<leader>gd", function()
	require("snacks").picker.git_diff()
end, { desc = "Git Diff" })
keymap.set("n", "<leader>gs", function()
	require("snacks").picker.git_status()
end, { desc = "Git Status" })
keymap.set("n", "<leader>gD", function()
	require("snacks").picker.git_stash()
end, { desc = "Git Stash" })
keymap.set("n", "<leader>sb", function()
	require("snacks").picker.lines()
end, { desc = "Buffer Lines" })
keymap.set("n", "<leader>sB", function()
	require("snacks").picker.grep_buffers()
end, { desc = "Grep Open Buffers" })
keymap.set("n", "<leader>sp", function()
	require("snacks").picker.lazy()
end, { desc = "Search for Plugin Spec" })
keymap.set("n", "<leader>s", function()
	require("snacks").picker.registers()
end, { desc = "Registers" })
keymap.set("n", "<leader>s/", function()
	require("snacks").picker.search_history()
end, { desc = "Search History" })
keymap.set("n", "<leader>sa", function()
	require("snacks").picker.autocmds()
end, { desc = "Autocmds" })
keymap.set("n", "<leader>sc", function()
	require("snacks").picker.command_history()
end, { desc = "Command History" })
keymap.set("n", "<leader>sC", function()
	require("snacks").picker.commands()
end, { desc = "Commands" })
keymap.set("n", "<leader>sd", function()
	require("snacks").picker.diagnostics()
end, { desc = "Diagnostics" })
keymap.set("n", "<leader>sD", function()
	require("snacks").picker.diagnostics_buffer()
end, { desc = "Buffer Diagnostics" })
keymap.set("n", "<leader>sh", function()
	require("snacks").picker.help()
end, { desc = "Help Pages" })
keymap.set("n", "<leader>sH", function()
	require("snacks").picker.highlights()
end, { desc = "Highlights" })
keymap.set("n", "<leader>si", function()
	require("snacks").picker.icons()
end, { desc = "Icons" })
keymap.set("n", "<leader>sj", function()
	require("snacks").picker.jumps()
end, { desc = "Jumps" })
keymap.set("n", "<leader>sk", function()
	require("snacks").picker.keymaps()
end, { desc = "Keymaps" })
keymap.set("n", "<leader>sl", function()
	require("snacks").picker.localist()
end, { desc = "Location List" })
keymap.set("n", "<leader>sM", function()
	require("snacks").picker.man()
end, { desc = "Man Pages" })
keymap.set("n", "<leader>sm", function()
	require("snacks").picker.marks()
end, { desc = "Marks" })
keymap.set("n", "<leader>sR", function()
	require("snacks").picker.resume()
end, { desc = "Resume" })
keymap.set("n", "<leader>sq", function()
	require("snacks").picker.qflist()
end, { desc = "Quickfix List" })
keymap.set("n", "<leader>su", function()
	require("snacks").picker.undo()
end, { desc = "Undotree" })
keymap.set("n", "<leader>uC", function()
	require("snacks").picker.colorschemes()
end, { desc = "Colorschemes" })
keymap.set("n", "<leader>n", function()
	require("snacks").notifier.show_history()
end)

-- Git-blame
keymap.set("n", "<leader>gb", ":GitBlameToggle<CR>", { desc = "Toggle Git Blame" }) -- toggle git blame

-- Harpoon
keymap.set("n", "<leader>ha", require("harpoon.mark").add_file, { desc = "Add File" })
keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu, { desc = "Toggle Quick Menu" })
keymap.set("n", "<leader>h1", function()
	require("harpoon.ui").nav_file(1)
end, { desc = "Navigation File (1)" })
keymap.set("n", "<leader>h2", function()
	require("harpoon.ui").nav_file(2)
end, { desc = "Navigation File (2)" })
keymap.set("n", "<leader>h3", function()
	require("harpoon.ui").nav_file(3)
end, { desc = "Navigation File (3)" })
keymap.set("n", "<leader>h4", function()
	require("harpoon.ui").nav_file(4)
end, { desc = "Navigation File (4)" })
keymap.set("n", "<leader>h5", function()
	require("harpoon.ui").nav_file(5)
end, { desc = "Navigation File (5)" })
keymap.set("n", "<leader>h6", function()
	require("harpoon.ui").nav_file(6)
end, { desc = "Navigation File (6)" })
keymap.set("n", "<leader>h7", function()
	require("harpoon.ui").nav_file(7)
end, { desc = "Navigation File (7)" })
keymap.set("n", "<leader>h8", function()
	require("harpoon.ui").nav_file(8)
end, { desc = "Navigation File (8)" })
keymap.set("n", "<leader>h9", function()
	require("harpoon.ui").nav_file(9)
end, { desc = "Navigation File (9)" })

-- LSP
keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Hover" })
keymap.set("n", "gd", function()
	require("snacks").picker.lsp_definitions()
end, { desc = "LSP Definitions" })
keymap.set("n", "gD", function()
	require("snacks").picker.lsp_references()
end, { desc = "LSP References" })
keymap.set("n", "gi", function()
	require("snacks").picker.lsp_implementations()
end, { desc = "LSP Implementations" })
keymap.set("n", "gt", function()
	require("snacks").picker.lsp_type_definitions()
end, { desc = "LSP Type Definitions" })
-- keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {desc="LSP"})
keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { desc = "LSP Signature Help" })
keymap.set("n", "rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "LSP Rename" })
keymap.set("n", "gf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", { desc = "Lsp Format" })
-- keymap.set("v", "gf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", {desc = ""})
keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "LSP Code Action" })
keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "LSP Open Float" })
keymap.set("n", "gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { desc = "LSP Goto Prev" })
keymap.set("n", "gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", { desc = "LSP Goto Next" })
keymap.set("n", "tr", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", { desc = "LSP Document Symbol" })
keymap.set("i", "<C-Space>", "<cmd>lua vim.lsp.buf.completion()<CR>", { desc = "LSP Completion" })

-- Debugging
keymap.set("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", {desc="Toggle Breakpoint"})
keymap.set("n", "<leader>bc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>", {desc="Breakpoint Conditions"})
keymap.set("n", "<leader>bl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>", {desc="Log Point Message"})
keymap.set("n", "<leader>br", "<cmd>lua require'dap'.clear_breakpoints()<cr>", {desc="Clear BreakPoint"})
keymap.set("n", "<leader>ba", "<cmd>Telescope dap list_breakpoints<cr>", {desc="List Breakpoint"})
keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", {desc="DAP Continue"})
keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>", {desc="DAP Step Over"})
keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>", {desc="DAP Step Into"})
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>", {desc="DAP Step Out"})
keymap.set("n", "<leader>dd", function()
	require("dap").disconnect()
	require("dapui").close()
end, {desc="Open DAPUI"})
keymap.set("n", "<leader>dt", function()
	require("dap").terminate()
	require("dapui").close()
end, {desc="Close DAPUI"})
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", {desc="DAP Replace Toggle"})
keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", {desc="DAP Run Last"})
keymap.set("n", "<leader>di", function()
	require("dap.ui.widgets").hover()
end, {desc="DAP Widgets Hover"})
keymap.set("n", "<leader>d?", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.scopes)
end, {desc="DAP Widget Float Window"})

-- Snacks Terminal And LazyGit
keymap.set({ "n", "t" }, "<C-/>", function()
	require("snacks").terminal()
end, { desc = "Toggle Terminal" })
keymap.set("n", "<leader>gg", function()
	require("snacks").lazygit()
end, { desc = "Lazygit" })

-- Neotest
keymap.set("n", "<leader>tn", function()
	require("neotest").run.run()
end, {desc = "Test Run"})
keymap.set("n", "<leader>tl", function()
	require("neotest").run.run_last()
end, {desc="Test Run Last"})
keymap.set("n", "<leader>tm", function()
	require("neotest").summary.run_marked()
end, {desc="Test Summary"})
keymap.set("n", "<leader>tf", function()
	require("neotest").run.run(vim.fn.expand("%"))
end, {desc="Test Run Function"})
keymap.set("n", "<leader>ts", function()
	require("neotest").summary.toggle()
end, {desc="Test Toggle Summary"})
keymap.set("n", "<leader>to", function()
	require("neotest").output.open({ enter = true })
end, {desc="Test Output Open"})
keymap.set("n", "<leader>ti", function()
	require("neotest").output.open({ enter = true, last_run = true })
end, {desc="Test Output Open Last Test"})
keymap.set("n", "<leader>tpo", function()
	require("neotest").output_panel.toggle()
end, {desc="Test Output Panel Toggle"})
keymap.set("n", "<leader>tpl", function()
	require("neotest").output_panel.clear()
end, {desc="Test Output Panel Clear"})

-- Laravel Keymaps
keymap.set("n", "<leader>ll", "<cmd>Laravel<cr>")
keymap.set("n", "<c-g>", "<cmd>Laravel view_finder<cr>")
keymap.set("n", "<leader>la", "<cmd>Laravel art<cr>")
keymap.set("n", "<leader>lr", "<cmd>Laravel routes<cr>")
keymap.set("n", "<leader>lh", "<cmd>Laravel art docs<cr>")
keymap.set("n", "<leader>lm", "<cmd>Laravel make<cr>")
keymap.set("n", "<leader>ln", "<cmd>Laravel related<cr>")
keymap.set("n", "<leader>lc", "<cmd>Laravel commands<cr>")
keymap.set("n", "<leader>lo", "<cmd>Laravel resources<cr>")
keymap.set("n", "<leader>lp", "<cmd>Laravel panel<cr>")
keymap.set("n", "gf", function()
	if require("laravel").app("gf").cursor_on_resource() then
		return "<cmd>Laravel gf<cr>"
	else
		return "gf"
	end
end, { expr = true, noremap = true })

-- Which Key
keymap.set("n", "<leader>?", function()
	require("which-key").show({ global = false })
end, { desc = "Buffer Keymaps (which-key)" })
keymap.set("n", "<c-w><space>", function()
	require("which-key").show({ keys = "<c-w>", loop = true })
end, { desc = "Window Hydra Mode (which-key)" })

-- custom keymaps
keymap.set("n", "tt", "<cmd>t.<cr>")
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "dw", 'vb"_d')

-- Move to window using the <ctrl> hjkl keys
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window" })

-- better up/down
keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Move Lines
keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- better indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")
