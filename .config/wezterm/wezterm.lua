-- Pull in the wezterm API
---@type Wezterm
local wezterm = require 'wezterm'
local keybinds = require 'keybinds'
local system = require 'system_specific'
local act = wezterm.action

local is_linux = function()
	return wezterm.target_triple:find("linux") ~= nil
end
local is_mac = function()
	return wezterm.target_triple:find("darwin") ~= nil
end

-- This will hold the configuration.
---@class Config
local config = wezterm.config_builder()

-- System Specific Configuration:
if is_mac then
	system.mac_config(config)
end

-- Non-System Specific Configuration:
-- Colors
config.color_scheme = "catppuccin-mocha"

-- Font
config.font = wezterm.font("JetBrainsMono Nerd Font")

-- Tabs
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

-- Keybinds
keybinds.keys(config)

-- and finally, return the configuration to wezterm
return config
