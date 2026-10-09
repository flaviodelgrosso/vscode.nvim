-- VSCode Dark palette for vscode.nvim

---@class ThemePalette
local palette = {
  -- Surfaces (dark backgrounds)
  surface_dark_0_hard = "#181818",
  surface_dark_0 = "#1F1F1F", -- editor background
  surface_dark_0_soft = "#252526",
  surface_dark_1_soft = "#2D2D2D",
  surface_dark_1 = "#222222", -- cursor line
  surface_dark_2 = "#252526", -- sidebar / tab bar
  surface_dark_3 = "#2D2D2D", -- inactive tab
  surface_dark_4 = "#373737", -- statusline
  surface_float = "#202020", -- popup background
  surface_left_light = "#636369",

  -- Foreground/text surfaces
  surface_light_0 = "#BBBBBB", -- popup foreground
  surface_light_1 = "#D4D4D4", -- editor foreground
  surface_light_2 = "#AEAFAD", -- cursor
  surface_light_3 = "#898989", -- split light
  surface_light_4 = "#5A5A5A", -- line number

  -- Syntax colors
  gray = "#808080",
  violet = "#646695",
  blue = "#569CD6",
  accent_blue = "#4FC1FF",
  medium_blue = "#18A2FE",
  disabled_blue = "#729DB3",
  light_blue = "#9CDCFE",
  green = "#6A9955",
  blue_green = "#4EC9B0",
  light_green = "#B5CEA8",
  red = "#F44747",
  orange = "#CE9178",
  light_red = "#D16969",
  yellow_orange = "#D7BA7D",
  yellow = "#DCDCAA",
  dark_yellow = "#FFD602",
  pink = "#C586C0",

  -- UI accents
  selection = "#264F78",
  popup_highlight_blue = "#04395E",
  popup_highlight_gray = "#343B41",
  search = "#613315",
  search_current = "#515C6A",
  split_dark = "#444444",
  cursor_dark = "#51504F",
  dim_highlight = "#51504F",
  context = "#404040",
  context_current = "#707070",
  fold_background = "#202D39",
  suggestion = "#6A6A6A",
  folder = "#787878",
  debug_pc = "#4C4C19",
  ui_blue = "#084671",
  ui_orange = "#F28B25",

  -- Diff surfaces
  diff_delete_dark_hard = "#4B1818",
  diff_delete_dark = "#6F1313",
  diff_add_dark_hard = "#373D29",
  diff_add_dark = "#4B5632",
  diff_change_dark = "#4B1818",
  diff_text_dark = "#6F1313",

  -- Git roles
  git_added = "#81B88B",
  git_modified = "#E2C08D",
  git_deleted = "#C74E39",
  git_renamed = "#73C991",
  git_untracked = "#73C991",
  git_ignored = "#8C8C8C",
  git_conflicting = "#E4676B",
  git_submodule = "#8DB9E2",
}

return palette
