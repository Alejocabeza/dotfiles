-- Delete a word backwards
vim.keymap.set("n", "dw", 'vb"_d')

-- Select All
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
vim.keymap.set("n", "te", ":tabedit<Return>", { desc = "Create New Tab" })
vim.keymap.set("n", "<tab>", ":tabnext<Return>", { desc = "Focus Next Tab", noremap = true, silent = true })
vim.keymap.set("n", "<s-tab>", ":tabprev<Return>", { desc = "Focus Previous Tab", noremap = true, silent = true })

-- Split window
vim.keymap.set("n", "ss", ":split<Return>", { noremap = true, silent = true })
vim.keymap.set("n", "sv", ":vsplit<Return>", { noremap = true, silent = true })

-- copy a line
vim.keymap.set("n", "tt", "<cmd>t.<Return>")
