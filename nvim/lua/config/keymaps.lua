-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local Util = require("lazyvim.util")
local Snacks = require("snacks")

-- OIL
vim.keymap.set("n", "nt", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Borderless terminal
vim.keymap.set("n", "<C-/>", function()
  Snacks.terminal.get(nil, { border = "none" })
end, { desc = "Term with border" })

-- Borderless lazygit
vim.keymap.set("n", "<leader>gg", function()
  Snacks.terminal.get("lazygit", { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false, border = "none" })
end, { desc = "Lazygit (root dir)" })

keymap.del({ "i" }, "<A-j>")
keymap.del({ "i" }, "<A-k>")
keymap.del("n", "<C-Left>")
keymap.del("n", "<C-Down>")
keymap.del("n", "<C-Up>")
keymap.del("n", "<C-Right>")

keymap.set("n", "<M-h>", '<Cmd>lua require("tmux").resize_left()<CR>', { silent = true })
keymap.set("n", "<M-j>", '<Cmd>lua require("tmux").resize_bottom()<CR>', { silent = true })
keymap.set("n", "<M-k>", '<Cmd>lua require("tmux").resize_top()<CR>', { silent = true })
keymap.set("n", "<M-l>", '<Cmd>lua require("tmux").resize_right()<CR>', { silent = true })

local set_keymap = vim.api.nvim_set_keymap

-- clone line
keymap.set('n', 'tt', '<cmd>t.<cr>')

-- Select All
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Delete a word backwards
vim.keymap.set("n", "dw", 'vb"_d')

-- Split windows
keymap.set("n", "sv", ":vsplit<Return>", opts)
keymap.set("n", "ss", ":split<Return>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit<CR>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- close and save easy
keymap.set('n', '<C-w>', "<cmd>q<cr>")
keymap.set('n', '<C-s>', "<cmd>w<cr>")
