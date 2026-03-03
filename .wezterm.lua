-- ╔══════════════════════════════════════════════════════════════════════════════╗
-- ║                          GENTLEMAN DOTS - WEZTERM                            ║
-- ║                           Optimized for Neovim                               ║
-- ╚══════════════════════════════════════════════════════════════════════════════╝

local wezterm = require("wezterm")
local config = {}

-- ┌──────────────────────────────────────────────────────────────────────────────┐
-- │                                   FONT                                       │
-- └──────────────────────────────────────────────────────────────────────────────┘

-- config.font = wezterm.font("IosevkaTerm NF")
config.font_size = 14.0

-- ┌──────────────────────────────────────────────────────────────────────────────┐
-- │                                  WINDOW                                      │
-- └──────────────────────────────────────────────────────────────────────────────┘

config.window_background_opacity = 0.95
config.macos_window_background_blur = 20
config.win32_system_backdrop = "Acrylic"

config.window_padding = {
	top = 0,
	right = 0,
	left = 0,
	bottom = 0,
}

config.enable_scroll_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- Hide title bar (buttons: close, minimize, maximize)
-- Options: "NONE" (borderless), "RESIZE" (border only), "INTEGRATED_BUTTONS|RESIZE" (buttons in tab bar)
config.window_decorations = "RESIZE"

-- ┌──────────────────────────────────────────────────────────────────────────────┐
-- │                                  CURSOR                                      │
-- └──────────────────────────────────────────────────────────────────────────────┘

config.default_cursor_style = "SteadyBlock"
config.cursor_blink_rate = 500
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"

-- ┌──────────────────────────────────────────────────────────────────────────────┐
-- │                            NEOVIM OPTIMIZATIONS                              │
-- └──────────────────────────────────────────────────────────────────────────────┘

-- Terminal & Colors
if wezterm.target_triple:find("windows") then
	config.term = "xterm-256color"
else
	config.term = "wezterm"
end
config.enable_csi_u_key_encoding = true

-- Undercurl support (LSP diagnostics, spelling)
config.underline_thickness = 2
config.underline_position = -2

-- Scrollback
config.scrollback_lines = 10000

-- Performance
config.max_fps = 240

-- Image support
config.enable_kitty_graphics = true

-- Input handling
config.use_dead_keys = false
config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = false

-- ┌──────────────────────────────────────────────────────────────────────────────┐
-- │                        GRUUBOX MATERIAL THEME                               │
-- │                    Medium Dark - Material Palette                           │
-- └──────────────────────────────────────────────────────────────────────────────┘

config.colors = {
	-- Base Colors
	foreground = "#d4be98",
	background = "#1d2021",

	-- Cursor
	cursor_bg = "#d4be98",
	cursor_fg = "#1d2021",
	cursor_border = "#d4be98",

	-- Selection
	selection_fg = "#d4be98",
	selection_bg = "#4d2a2a",

	-- Tab Bar Colors
	tab_bar = {
		background = "#1d2021",
		active_tab = {
			bg_color = "#3c3836",
			fg_color = "#d4be98",
			intensity = "Normal",
			underline = "None",
			italic = false,
			strikethrough = false,
			reverse = false,
		},
		inactive_tab = {
			bg_color = "#212421",
			fg_color = "#7c6f64",
		},
		inactive_tab_hover = {
			bg_color = "#282828",
			fg_color = "#a88b71",
			italic = true,
		},
		new_tab = {
			bg_color = "#1d2021",
			fg_color = "#7c6f64",
		},
		new_tab_hover = {
			bg_color = "#212421",
			fg_color = "#d4be98",
			italic = true,
		},
	},

	-- Scrollbar
	scrollbar_thumb = "#3c3836",
	split = "#3c3836",

	-- Normal Colors (ANSI)
	ansi = {
		"#32302f", -- black   (bg3)
		"#ea6962", -- red     (red)
		"#a9b665", -- green   (green)
		"#d8a657", -- yellow  (yellow)
		"#7daea3", -- blue    (blue)
		"#d3869b", -- magenta (purple)
		"#89d482", -- cyan    (aqua)
		"#d4be98", -- white   (fg0)
	},

	-- Bright Colors
	brights = {
		"#7c6f64", -- black   (grey1)
		"#ea6962", -- red     (light red - same as red)
		"#a9b665", -- green   (light green - same as green)
		"#d8a657", -- yellow  (light yellow - same as yellow)
		"#7daea3", -- blue    (light blue - same as blue)
		"#d3869b", -- magenta (light purple - same as purple)
		"#89d482", -- cyan    (light aqua - same as aqua)
		"#d4be98", -- white   (fg1 - same as fg0)
	},

	-- Indexed Colors (16-231)
	indexed = {
		[16] = "#e78a4e", -- orange
		[17] = "#fabd2f", -- bright orange/yellow
	},

	-- Scrollbar thumb
	thumb_normal = "#3c3836",
	thumb_hover = "#665c54",
}

-- ┌──────────────────────────────────────────────────────────────────────────────┐
-- │                            WINDOWS (WSL)                                     │
-- └──────────────────────────────────────────────────────────────────────────────┘

-- Uncomment for Windows/WSL:
config.default_domain = "WSL:Ubuntu-24.04"
config.front_end = "OpenGL"

local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window{}
	window:gui_window():maximize()
end)

return config
