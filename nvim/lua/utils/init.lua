local M = {}

function M.enableForCategory(category, default)
	local enabledCategories = { "laravel", "ai", "symfony" }
	for _, enabledCategory in ipairs(enabledCategories) do
		if category == enabledCategory then
			return true
		end
	end
	return false
end

return M
