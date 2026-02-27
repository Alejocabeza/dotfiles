return {
  "mg979/vim-visual-multi",
  branch = "master",
  event = "VeryLazy",
  init = function()
    -- Configuración opcional para que se sienta más nativo
    vim.g.VM_maps = {
      ["Find Under"] = "<C-d>", -- Ctrl+D para seleccionar la siguiente ocurrencia
      ["Find Subword Under"] = "<C-d>", -- Lo mismo
    }
  end,
}
