return vim.diagnostic.config {
  severity_sort = true,
  float = {
    border = "rounded",
    source = false, -- Faster: don't check multiple sources
    focus = false,
  },
  underline = { severity = vim.diagnostic.severity.ERROR },
  signs = vim.g.have_nerd_font and {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "󰌵",
    },
  } or {},
  -- Optimized virtual text - solo errores y advertencias por defecto
  virtual_text = {
    source = false, -- Faster: don't check multiple sources
    spacing = 4,
    prefix = "●",
    severity = {
      min = vim.diagnostic.severity.WARN, -- Only show warnings and errors
    },
  },
  -- Optimized update settings
  update_in_insert = false, -- Don't update diagnostics while typing (MUY IMPORTANTE para rendimiento)
}
