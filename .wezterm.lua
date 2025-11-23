-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 16

config.font =
  wezterm.font('Noto Sans Mono', { weight = 640, italic = false })

config.color_scheme = 'Catppuccin Macchiato'

-- tab bar
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.tab_max_width = 100

-- bell
config.audible_bell = "Disabled"

-- Finally, return the configuration to wezterm:
return config


