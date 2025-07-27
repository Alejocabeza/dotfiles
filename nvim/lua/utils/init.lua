local M = {}

function M.has(name)
  local ok, _ = pcall(require, name)
  return ok
end

return M

