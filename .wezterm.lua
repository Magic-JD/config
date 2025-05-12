-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux

-- Start maximized
wezterm.on("gui-startup", function()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():toggle_fullscreen()
end)

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.font = wezterm.font 'MesloLGS NF'
config.colors = {
  foreground = '#cdd6f4',
  background = '#1e1e2e',
  cursor_bg = '#cdd6f4',
  cursor_fg = '#1e1e2e',
  visual_bell = 'black',
}
config.bold_brightens_ansi_colors = "No"
config.freetype_load_flags = 'NO_HINTING'
config.font_size = 14.0
config.front_end = 'OpenGL'
config.freetype_load_target = 'Light'
config.freetype_render_target = 'HorizontalLcd'
config.cell_width = 0.9
config.keys = {
    {
        key = 'F5',
        action = wezterm.action.ReloadConfiguration,
    },
    {
        key = 'F11',
        action = wezterm.action.ToggleFullScreen,
    },
}
config.visual_bell = {
  fade_in_function = 'EaseIn',
  fade_in_duration_ms = 150,
  fade_out_function = 'EaseOut',
   fade_out_duration_ms = 150,
}
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.cursor_blink_rate = 0
config.hide_tab_bar_if_only_one_tab = true
config.warn_about_missing_glyphs=false

config.enable_kitty_keyboard = true
config.enable_kitty_graphics = true

-- background transparency
local opacities = {1.0, 0.9, 0.8, 0.7, 0.0}
local idx = 4
config.window_background_opacity = opacities[idx]

-- toggle function
wezterm.on("toggle-opacity", function(window, pane)
    idx = idx + 1
    if idx > #opacities then idx = idx - #opacities end
    local overrides = window:get_config_overrides() or {}
    overrides.window_background_opacity = opacities[idx]
    window:set_config_overrides(overrides)
end)

config.keys = {
    {
        key = "o",
        mods = "CTRL",
        action = wezterm.action.EmitEvent("toggle-opacity"),
    },
}
-- and finally, return the configuration to wezterm
return config
