local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    TelescopeNormal = { link = "ThemeFg1" },
    TelescopeSelection = { fg = colors.fg1, bg = colors.popup_highlight_blue },
    TelescopeSelectionCaret = { link = "TelescopeSelection" },
    TelescopeMultiSelection = { fg = colors.fg1, bg = colors.popup_highlight_blue },
    TelescopeBorder = { link = "ThemeFg4" },
    TelescopePromptBorder = { link = "ThemeFg4" },
    TelescopeResultsBorder = { link = "ThemeFg4" },
    TelescopePreviewBorder = { link = "ThemeFg4" },
    TelescopeMatching = { link = "ThemeMediumBlueBold" },
    TelescopePromptPrefix = { link = "ThemeFg1" },
    TelescopePrompt = { link = "TelescopeNormal" },
  }
end

return M
