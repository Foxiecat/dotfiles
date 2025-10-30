local wezterm = require 'wezterm'
local act = wezterm.action

local module = {}

function module.keys(config)
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
end

return module
