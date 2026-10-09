local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    -- Which-Key
    WhichKeyTitle = { link = "NormalFloat" },
    WhichKeyBorder = { link = "FloatBorder" },
    WhichKeySeparator = { link = "Normal" },
    WhichKeyValue = { link = "Normal" },
    WhichKeyIconAzure = { link = "ThemeBlueGreen" },
    WhichKeyIconBlue = { link = "ThemeBlue" },
    WhichKeyIconGreen = { link = "ThemeGreen" },
    WhichKeyIconGrey = { link = "ThemeGray" },
    WhichKeyIconOrange = { link = "ThemeYellowOrange" },
    WhichKeyIconPurple = { link = "ThemePink" },
    WhichKeyIconRed = { link = "ThemeRed" },
    WhichKeyIconYellow = { link = "ThemeYellow" },
    -- Illuminate
    IlluminatedWordText = { link = "LspReferenceText" },
    IlluminatedWordRead = { link = "LspReferenceRead" },
    IlluminatedWordWrite = { link = "LspReferenceWrite" },
    -- Indent blankline
    IblIndent = { fg = colors.context, nocombine = true },
    IblWhitespace = { fg = colors.context, nocombine = true },
    IblScope = { fg = colors.context_current, nocombine = true },
    -- Rainbow delimiters
    TSRainbowRed = { fg = colors.pink },
    TSRainbowOrange = { fg = colors.orange },
    TSRainbowYellow = { fg = colors.yellow_orange },
    TSRainbowGreen = { fg = colors.green },
    TSRainbowBlue = { fg = colors.medium_blue },
    TSRainbowViolet = { fg = colors.violet },
    TSRainbowCyan = { fg = colors.blue_green },
    RainbowDelimiterRed = { fg = colors.pink },
    RainbowDelimiterOrange = { fg = colors.orange },
    RainbowDelimiterYellow = { fg = colors.yellow_orange },
    RainbowDelimiterGreen = { fg = colors.green },
    RainbowDelimiterBlue = { fg = colors.medium_blue },
    RainbowDelimiterViolet = { fg = colors.violet },
    RainbowDelimiterCyan = { fg = colors.blue_green },
    -- Copilot
    CopilotSuggestion = { fg = colors.suggestion },
  }
end

return M
