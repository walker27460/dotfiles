local wezterm = require("wezterm")

local config = {}

config.font = wezterm.font("0xProto Nerd Font Mono")
config.font_size = 13
config.window_background_opacity = 0.8
config.color_scheme = "Solarized Dark Higher Contrast"

if string.match(wezterm.target_triple, "msvc") then
	config.default_prog = { "cmd.exe" }
end

return config
