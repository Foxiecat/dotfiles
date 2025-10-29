-- Pull in the wezterm API
---@type Wezterm
local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the configuration.
---@class Config
local config = wezterm.config_builder()

config.automatically_reload_config = false
--config.enable_wayland = true

-- Colors
config.color_scheme = "catppuccin-mocha"

-- Font
config.font = wezterm.font("JetBrainsMono Nerd Font")

-- Window
config.window_background_opacity = 0.5
config.macos_window_background_blur = 50

config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true

config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = false
config.keys = {
	{
		key = '.',
		mods = 'ALT',
		action = act.SplitPane {
			direction = 'Right'
		},
	},
	{
		key = ',',
		mods = 'ALT',
		action = act.SplitPane {
			direction = 'Down'
		},
	},
	{
		key = 'x',
		mods = 'ALT',
		action = act.CloseCurrentPane { confirm = false },
	},
}
-- and finally, return the configuration to wezterm
return config
