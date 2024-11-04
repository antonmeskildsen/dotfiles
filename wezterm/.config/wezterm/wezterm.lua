local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = 'Tokyo Night' 
config.font = wezterm.font('JetBrains Mono', { weight = 'Medium' })
config.font_size = 12
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.95

config.ssh_domains = {
	{
		name = 'freezer.pc',
		remote_address = '192.168.2.32',
		username = 'qtec',
	},
	{
		name = 'main.cam',
		remote_address = '192.168.2.239',
		username = 'root',
	}
}

return config
