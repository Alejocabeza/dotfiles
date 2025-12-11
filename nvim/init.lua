require('nixCatsUtils').setup({
	non_nix_value = true
})

require('core')

local function getlockfilepath()
  if require("nixCatsUtils").isNixCats then
    if type(require("nixCats").settings.unwrappedCfgPath) == "string" then
      return require("nixCats").settings.unwrappedCfgPath .. "/lazy-lock.json"
    else
      -- Fallback for nix users if unwrappedCfgPath is not set
      -- Using data directory, which should be writable.
      return vim.fn.stdpath("data") .. "/lazy-lock.json"
    end
  else
    -- For non-nix users, the config directory should be writable.
    return vim.fn.stdpath("config") .. "/lazy-lock.json"
  end
end

local lazyOptions = {
	lockfile = getlockfilepath(),
}

require('nixCatsUtils.lazyCat').setup(nixCats.pawsible({'allPlugins', 'start', 'lazy.nvim'}), {
	{import='custom.plugins'}
}, lazyOptions)

require('tools')
