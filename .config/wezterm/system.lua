---@type Wezterm
local wezterm = require("wezterm")

---@class Module
local module = {}

function module.apply_to_config(config)
	if wezterm.target_triple == "aarch64-apple-darwin" then
		config.macos_window_background_blur = 50

		config.send_composed_key_when_left_alt_is_pressed = true
		config.send_composed_key_when_right_alt_is_pressed = false
	end

	if wezterm.target_triple == "x86_64-unknown-linux-gnu" then
		config.kde_window_background_blur = true
	end
end

return module
