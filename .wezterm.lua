local wezterm = require("wezterm")
local config = wezterm.config_builder()
-- local mux = wezterm.mux

-- fonts
config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.font_size = 12

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.95
-- config.macos_window_background_blur = 8
config.color_scheme = "One Dark (Gogh)"
config.front_end = "OpenGL"

return config
