-- Pull in the wezterm API
---@type Wezterm
local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the configuration.
---@class Config
local config = wezterm.config_builder()

config.automatically_reload_config = false
config.enable_wayland = true

-- Colors
config.color_scheme = "catppuccin-mocha"

-- Font
config.font = wezterm.font("JetBrainsMono NF")

-- Window
config.initial_cols = 160
config.initial_rows = 40

config.window_background_opacity = 0.5
config.kde_window_background_blur = true

--config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true

config.keys = {
	{
		key = '+',
		mods = 'SHIFT|ALT',
		action = wezterm.action.SplitHorizontal {
			args = { 'top' },
			domain = 'CurrentPaneDomain',
		},
	},
}
-- and finally, return the configuration to wezterm
return config
