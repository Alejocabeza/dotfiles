-- Configuración para archivos de Ghostty
vim.bo.commentstring = "# %s"

-- Usar resaltado de sintaxis de 'config' o 'bash' como fallback básico si no hay uno específico instalado
-- Esto ayuda a que no se vea texto plano completamente
if vim.fn.hlexists("ghostty") == 0 then
  vim.bo.syntax = "conf"
end
