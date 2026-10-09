local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    NoiceCursor = { link = "Cursor" },
    NoiceCmdlinePopupBorder = { fg = colors.blue },
    NoiceCmdlineIcon = { link = "NoiceCmdlinePopupBorder" },
    NoiceConfirmBorder = { link = "NoiceCmdlinePopupBorder" },
    NoiceCmdlinePopupBorderSearch = { fg = colors.yellow_orange },
    NoiceCmdlineIconSearch = { link = "NoiceCmdlinePopupBorderSearch" },
    NotifyDEBUGBorder = { link = "ThemeGray" },
    NotifyDEBUGIcon = { link = "ThemeGray" },
    NotifyDEBUGTitle = { link = "ThemeGray" },
    NotifyERRORBorder = { link = "ThemeError" },
    NotifyERRORIcon = { link = "ThemeError" },
    NotifyERRORTitle = { link = "ThemeError" },
    NotifyINFOBorder = { link = "ThemeInfo" },
    NotifyINFOIcon = { link = "ThemeInfo" },
    NotifyINFOTitle = { link = "ThemeInfo" },
    NotifyTRACEBorder = { link = "ThemePink" },
    NotifyTRACEIcon = { link = "ThemePink" },
    NotifyTRACETitle = { link = "ThemePink" },
    NotifyWARNBorder = { link = "ThemeWarning" },
    NotifyWARNIcon = { link = "ThemeWarning" },
    NotifyWARNTitle = { link = "ThemeWarning" },
  }
end

return M
