local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")
-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')
-- Copy a line
keymap.set("n", "tt", "<cmd>t.<cr>")
-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)
-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)
-- New tab
keymap.set("n", "te", ":tabedit<Return>")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window management
keymap.set("n", "sv", "<C-w>v", { desc = "Split Window Vertical" })
keymap.set("n", "ss", "<C-w>s", { desc = "Split Window horizontally'" })
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")
-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
-- Vim-maximizer
keymap.set("n", "sm", ":Maximize<CR>", { desc = "Toggle Maximize Tab" })
-- OIL
keymap.set('n', '-', '<cmd>Oil --float<cr>', {desc = "Open Oil in float mode"})
