local wezterm = require("wezterm")

local Config = {}

Config.font = wezterm.font "Hack Nerd Font Mono"
if string.match(wezterm.target_triple, "msvc") then
Config.default_prog = { "cmd.exe" }
end

return Config

