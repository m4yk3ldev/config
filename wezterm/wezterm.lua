local wezterm = require("wezterm")
local function font_with_fallback(name, params)
  local names = { name, "Apple Color Emoji", "azuki_font" }
  return wezterm.font_with_fallback(names, params)
end

local font_name = "JetBrainsMono Nerd Font Mono"
return {
  front_end = "OpenGL",
  color_scheme = "Ayu Mirage",
  window_background_image_hsb = {
    brightness = 0.3,
    hue = 1.0,
    saturation = 1.0,
  },
  window_background_image = os.getenv("HOME") + "/config/wezterm/wall.jpg",
  font = font_with_fallback(font_name),
  font_rules = {
    {
      italic = true,
      font = font_with_fallback(font_name, { italic = true }),
    },
    {
      italic = true,
      intensity = "Bold",
      font = font_with_fallback(font_name, { bold = true, italic = true }),
    },
    {
      intensity = "Bold",
      font = font_with_fallback(font_name, { bold = true }),
    },
    {
      intensity = "Half",
      font = font_with_fallback(font_name, { weight = "Light" }),
    },
  },
  font_size = 10,
  line_height = 1.0,
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  show_tab_index_in_tab_bar = false,
  tab_bar_at_bottom = true,
  automatically_reload_config = true,
  inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },
  exit_behavior = "CloseOnCleanExit",
  window_decorations = "RESIZE",
  selection_word_boundary = " \t\n{}[]()\"'`,;:",
  bold_brightens_ansi_colors = false,
  default_cursor_style = "BlinkingUnderline",
  keys = {
    {
      key = "x",
      mods = "CTRL",
      action = "ActivateCopyMode",
    },
    {
      key = "v",
      mods = "CTRL|SHIFT",
      action = wezterm.action({ PasteFrom = "Clipboard" }),
    },
    {
      key = "c",
      mods = "CTRL|SHIFT",
      action = wezterm.action({ CopyTo = "ClipboardAndPrimarySelection" }),
    },
  }
}
