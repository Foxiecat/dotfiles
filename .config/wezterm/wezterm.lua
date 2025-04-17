-- Pull in the wezterm API
---@type Wezterm
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
---@type Config
local config = {}
config = wezterm.config_builder()




-- Colors
config.color_scheme = 'Catppuccin Mocha'

-- Appearance
config.window_background_opacity = 0.8
config.macos_window_background_blur = 10
config.window_decorations = "RESIZE"
--config.hide_tab_bar_if_only_one_tab = true

-- and finally, return the configuration to wezterm
return config