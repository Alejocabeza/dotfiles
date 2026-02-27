return {
  "b0o/SchemaStore.nvim",
  lazy = true,
  version = false, -- last release is way too old
  config = function()
    -- Este plugin no necesita setup(), se usa dentro de la configuración de lspconfig para jsonls y yamlls
    -- Ya que usas lspconfig, vamos a inyectarlo en tu configuración de LSP existente
    -- Modificando la configuración del servidor 'jsonls' y 'yamlls' en setup/lsp/servers.lua si existe,
    -- o asegurando que lspconfig lo use.
    
    -- Nota: Como usas mason-lspconfig, esto debería integrarse en la configuración del servidor.
    -- Por ahora, solo instalamos el plugin para que esté disponible.
  end,
}
