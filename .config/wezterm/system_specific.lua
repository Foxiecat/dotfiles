local wezterm = require 'wezterm'
local act = wezterm.action

---@class Config
local module = {}

function module.mac_config(config)
	config.window_background_opacity = 0.5
	config.macos_window_background_blur = 50

	config.window_decorations = "RESIZE"
	config.window_close_confirmation = "NeverPrompt"
	config.send_composed_key_when_left_alt_is_pressed = true
	config.send_composed_key_when_right_alt_is_pressed = false
end

return module
