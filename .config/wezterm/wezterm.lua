-- Pull in the wezterm API
---@type Wezterm
local wezterm = require("wezterm")
local keybinds = require("keybinds")
local system = require("system")

-- This will hold the configuration.
---@class Config
local config = wezterm.config_builder()

-- Shared Configuration:
-- Window
config.window_background_opacity = 0.8
config.window_decorations = "NONE"
config.window_close_confirmation = "NeverPrompt"

-- Colors
config.color_scheme = "catppuccin-mocha"

-- Font
config.font = wezterm.font("JetBrainsMono Nerd Font")

-- Tabs
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

-- Keybinds
keybinds.keys(config)

-- System Specific Configuration:
system.apply_to_config(config)

-- and finally, return the configuration to wezterm
return config
