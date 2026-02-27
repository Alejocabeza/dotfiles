return {
  "aznhe21/actions-preview.nvim",
  config = function()
    require("actions-preview").setup({
      diff = {
        ctxlen = 3,
      },
      backend = { "telescope", "nui" },
      telescope = vim.tbl_extend(
        "force",
        require("telescope.themes").get_dropdown(),
        {
          make_value = nil,
          make_make_display = nil,
        }
      ),
    })
    
    -- Sobrescribir el mapeo que pusimos antes para usar este preview
    vim.keymap.set({ "v", "n" }, "ga", require("actions-preview").code_actions)
    vim.keymap.set({ "v", "n" }, "<leader>ca", require("actions-preview").code_actions)
  end,
}
