local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    MasonHighlight = { link = "ThemeBlue" },
    MasonHighlightBlock = { fg = colors.bg0, bg = colors.blue },
    MasonHighlightBlockBold = { fg = colors.bg0, bg = colors.blue, bold = config.bold },
    MasonHighlightSecondary = { link = "ThemeBlueGreen" },
    MasonHighlightBlockSecondary = { fg = colors.bg0, bg = colors.blue_green },
    MasonHighlightBlockBoldSecondary = { fg = colors.bg0, bg = colors.blue_green, bold = config.bold },
    MasonHeader = { link = "MasonHighlightBlockBoldSecondary" },
    MasonHeaderSecondary = { link = "MasonHighlightBlockBold" },
    MasonMuted = { fg = colors.fg4 },
    MasonMutedBlock = { fg = colors.bg0, bg = colors.fg4 },
    MasonMutedBlockBold = { fg = colors.bg0, bg = colors.fg4, bold = config.bold },
  }
end

return M
