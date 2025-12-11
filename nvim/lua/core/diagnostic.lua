vim.keymap.set({ "n" }, "<leader>vn", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Jump to next diagnostic" })
vim.keymap.set({ "n" }, "<leader>vp", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Jump to previous diagnostic" })

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.HINT] = "󰌵 ",
      [vim.diagnostic.severity.INFO] = " ",
    },
    linehl = {
      [vim.diagnostic.severity.ERROR] = "ErrorMsg",
    },
    numhl = {
      [vim.diagnostic.severity.WARN] = "WarningMsg",
    },
  },
})
