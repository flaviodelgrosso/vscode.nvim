local M = {}

---@param palette ThemePalette
---@param contrast Contrast
---@param key string palette key that may have `_hard` / `_soft` variants
---@return string
local function get_contrast_value(palette, contrast, key)
  return palette[key .. "_" .. contrast] or palette[key]
end

---@param palette ThemePalette
---@param config ThemeConfig
---@return table
function M.get(palette, config)
  local p = vim.deepcopy(palette)

  local contrast = config.contrast

  local color_groups = {
    bg0 = p.surface_dark_0,
    bg1 = p.surface_dark_1,
    bg2 = p.surface_dark_2,
    bg3 = p.surface_dark_3,
    bg4 = p.surface_dark_4,
    bg_float = p.surface_float,
    bg_left_light = p.surface_left_light,
    fg0 = p.surface_light_0,
    fg1 = p.surface_light_1,
    fg2 = p.surface_light_2,
    fg3 = p.surface_light_3,
    fg4 = p.surface_light_4,
    muted = p.gray,
    violet = p.violet,
    blue = p.blue,
    accent_blue = p.accent_blue,
    medium_blue = p.medium_blue,
    disabled_blue = p.disabled_blue,
    light_blue = p.light_blue,
    green = p.green,
    blue_green = p.blue_green,
    light_green = p.light_green,
    red = p.red,
    orange = p.orange,
    light_red = p.light_red,
    yellow_orange = p.yellow_orange,
    yellow = p.yellow,
    dark_yellow = p.dark_yellow,
    pink = p.pink,
    selection = p.selection,
    popup_highlight_blue = p.popup_highlight_blue,
    popup_highlight_gray = p.popup_highlight_gray,
    search = p.search,
    search_current = p.search_current,
    split_dark = p.split_dark,
    cursor_dark = p.cursor_dark,
    dim_highlight = p.dim_highlight,
    context = p.context,
    context_current = p.context_current,
    fold_background = p.fold_background,
    suggestion = p.suggestion,
    debug_pc = p.debug_pc,
    ui_blue = p.ui_blue,
    ui_orange = p.ui_orange,
    diff_delete = p.diff_delete_dark,
    diff_add = p.diff_add_dark,
    diff_change = p.diff_change_dark,
    diff_text = p.diff_text_dark,
    error = p.red,
    warning = p.yellow,
    info = p.blue,
    hint = p.blue,
    success = p.blue_green,
    git_added = p.git_added,
    git_modified = p.git_modified,
    git_deleted = p.git_deleted,
    git_renamed = p.git_renamed,
    git_untracked = p.git_untracked,
    git_ignored = p.git_ignored,
    git_conflicting = p.git_conflicting,
    git_submodule = p.git_submodule,
  }

  if contrast == "hard" or contrast == "soft" then
    color_groups.bg0 = get_contrast_value(p, contrast, "surface_dark_0")
    color_groups.bg1 = get_contrast_value(p, contrast, "surface_dark_1")
    color_groups.diff_delete = get_contrast_value(p, contrast, "diff_delete_dark")
    color_groups.diff_add = get_contrast_value(p, contrast, "diff_add_dark")
    color_groups.diff_change = get_contrast_value(p, contrast, "diff_change_dark")
  end

  return color_groups
end

---@param colors table
function M.setup_terminal_colors(colors)
  local term_colors = {
    colors.bg0, -- 0: black
    colors.red, -- 1: red
    colors.green, -- 2: green
    colors.yellow, -- 3: yellow
    colors.blue, -- 4: blue
    colors.pink, -- 5: magenta
    colors.blue_green, -- 6: cyan
    colors.fg1, -- 7: white
    colors.muted, -- 8: bright black
    colors.red, -- 9: bright red
    colors.green, -- 10: bright green
    colors.yellow, -- 11: bright yellow
    colors.blue, -- 12: bright blue
    colors.pink, -- 13: bright magenta
    colors.blue_green, -- 14: bright cyan
    colors.fg1, -- 15: bright white
  }
  for index, value in ipairs(term_colors) do
    vim.g["terminal_color_" .. index - 1] = value
  end
end

return M
