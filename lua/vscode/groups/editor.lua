local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  local bg0 = not config.transparent_mode and colors.bg0 or nil
  local bg_float = not config.transparent_mode and colors.bg_float or nil
  local bg2 = not config.transparent_mode and colors.bg2 or nil
  local bg4 = not config.transparent_mode and colors.bg4 or nil

  return {
    Normal = { fg = colors.fg1, bg = bg0 },
    NormalFloat = { fg = colors.fg1, bg = bg_float },
    NormalNC = config.dim_inactive and { fg = colors.fg0, bg = colors.bg2 } or { link = "Normal" },
    FloatBorder = { fg = colors.fg4, bg = bg_float },
    FloatTitle = { fg = colors.fg1, bg = bg_float, bold = config.bold },
    CursorLine = { bg = colors.bg1 },
    CursorColumn = { link = "CursorLine" },
    TabLineFill = config.transparent_mode and { fg = colors.fg1, bg = nil, reverse = config.invert_tabline }
      or { fg = colors.fg1, bg = colors.bg2, reverse = config.invert_tabline },
    TabLineSel = config.transparent_mode and { fg = colors.fg1, bg = nil, reverse = config.invert_tabline }
      or { fg = colors.fg1, bg = colors.bg0, reverse = config.invert_tabline },
    TabLine = config.transparent_mode and { fg = colors.muted, bg = nil, reverse = config.invert_tabline }
      or { fg = colors.fg1, bg = colors.bg3, reverse = config.invert_tabline },
    MatchParen = { bg = colors.dim_highlight },
    ColorColumn = { bg = colors.bg1 },
    Conceal = { fg = colors.fg1 },
    CursorLineNr = { fg = colors.fg0, bg = bg0 },
    NonText = { fg = colors.fg4 },
    SpecialKey = { link = "ThemeBlue" },
    Visual = { bg = colors.selection, reverse = config.invert_selection },
    VisualNOS = { link = "Visual" },
    Search = config.inverse and { fg = colors.yellow_orange, bg = colors.bg0, reverse = true }
      or { bg = colors.search },
    IncSearch = config.inverse and { fg = colors.orange, bg = colors.bg0, reverse = true }
      or { bg = colors.search_current },
    CurSearch = { link = "IncSearch" },
    QuickFixLine = { bold = config.bold },
    Underlined = { underline = config.underline },
    StatusLine = { fg = colors.fg1, bg = bg4 },
    StatusLineNC = { fg = colors.fg1, bg = bg2 },
    WinBar = { fg = colors.fg1, bg = bg0, bold = config.bold },
    WinBarNC = { fg = colors.fg1, bg = bg0 },
    WinSeparator = { fg = colors.split_dark, bg = bg0 },
    VertSplit = { link = "WinSeparator" },
    WildMenu = { bg = colors.selection },
    Directory = { link = "ThemeBlue" },
    Title = { bold = config.bold },
    ErrorMsg = { link = "ThemeError" },
    MoreMsg = { fg = colors.fg1, bg = bg2 },
    ModeMsg = { fg = colors.fg1, bg = bg2 },
    Question = { link = "ThemeBlue" },
    WarningMsg = { link = "ThemeWarning" },
    LineNr = { fg = colors.fg4, bg = bg0 },
    SignColumn = { bg = bg0 },
    Folded = { bg = colors.fold_background, italic = config.italic.folds },
    FoldColumn = { fg = colors.fg4, bg = bg0 },
    Cursor = config.inverse and { reverse = true } or { fg = colors.cursor_dark, bg = colors.fg2 },
    vCursor = { link = "Cursor" },
    iCursor = { link = "Cursor" },
    lCursor = { link = "Cursor" },
    Pmenu = { fg = colors.fg0, bg = colors.bg_float },
    PmenuSel = { fg = colors.fg0, bg = colors.popup_highlight_blue },
    PmenuSbar = { bg = colors.popup_highlight_gray },
    PmenuThumb = { bg = colors.fg0 },
    DiffDelete = { bg = colors.diff_delete },
    DiffAdd = { bg = colors.diff_add },
    DiffChange = { bg = colors.diff_change },
    DiffText = { bg = colors.diff_text },
    SpellCap = { link = "ThemeWarningUnderline" },
    SpellBad = { link = "ThemeErrorUnderline" },
    SpellLocal = { link = "ThemeInfoUnderline" },
    SpellRare = { link = "ThemeVioletUnderline" },
    Whitespace = { fg = colors.fg4 },
    EndOfBuffer = { fg = colors.bg0 },
  }
end

return M
