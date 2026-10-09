local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    debugPC = { bg = colors.debug_pc },
    debugBreakpoint = { link = "ThemeRedSign" },
    DapBreakpointSymbol = { fg = colors.red, bg = colors.bg0 },
    DapStoppedSymbol = { fg = colors.dark_yellow, bg = colors.bg0 },
    DapUIBreakpointsCurrentLine = { link = "ThemeBlueGreenBold" },
    DapUIBreakpointsDisabledLine = { fg = colors.dim_highlight },
    DapUIBreakpointsInfo = { link = "ThemeBlueGreen" },
    DapUIBreakpointsLine = { link = "ThemePink" },
    DapUIBreakpointsPath = { link = "ThemePink" },
    DapUICurrentFrameName = { link = "ThemeBlueGreenBold" },
    DapUIDecoration = { link = "ThemePink" },
    DapUIEndofBuffer = { link = "EndOfBuffer" },
    DapUIFloatBorder = { link = "ThemePink" },
    DapUILineNumber = { link = "ThemePink" },
    DapUIModifiedValue = { link = "ThemePinkBold" },
    DapUIPlayPause = { link = "ThemeBlueGreen" },
    DapUIPlayPauseNC = { link = "ThemeBlueGreen" },
    DapUIRestart = { link = "ThemeBlueGreen" },
    DapUIRestartNC = { link = "ThemeBlueGreen" },
    DapUIScope = { link = "ThemePink" },
    DapUISource = { link = "ThemeMediumBlue" },
    DapUIStepBack = { link = "ThemePink" },
    DapUIStepBackNC = { link = "ThemePink" },
    DapUIStepInto = { link = "ThemePink" },
    DapUIStepIntoNC = { link = "ThemePink" },
    DapUIStepOut = { link = "ThemePink" },
    DapUIStepOutNC = { link = "ThemePink" },
    DapUIStepOver = { link = "ThemePink" },
    DapUIStepOverNC = { link = "ThemePink" },
    DapUIStop = { link = "ThemeRed" },
    DapUIStopNC = { link = "ThemeRed" },
    DapUIStoppedThread = { link = "ThemePink" },
    DapUIThread = { link = "ThemeBlueGreen" },
    DapUIType = { link = "ThemePink" },
    DapUIUnavailable = { fg = colors.dim_highlight },
    DapUIUnavailableNC = { fg = colors.dim_highlight },
    DapUIWatchesEmpty = { fg = colors.dim_highlight },
    DapUIWatchesError = { link = "ThemeRed" },
    DapUIWatchesValue = { link = "ThemeBlueGreen" },
    DapUIWinSelect = { link = "ThemePinkBold" },
  }
end

return M
