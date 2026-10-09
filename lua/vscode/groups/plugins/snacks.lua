local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    SnacksPicker = { link = "Normal" },
    SnacksPickerBorder = { link = "FloatBorder" },
    SnacksPickerListCursorLine = { link = "PmenuSel" },
    SnacksPickerPreviewCursorLine = { link = "CursorLine" },
    SnacksPickerMatch = { link = "ThemeMediumBlueBold" },
    SnacksPickerPrompt = { link = "ThemeFg1" },
    SnacksPickerTitle = { link = "FloatTitle" },
    SnacksPickerDir = { link = "ThemeGray" },
    SnacksPickerDirectory = { link = "ThemeBlue" },
    SnacksPickerPathHidden = { link = "ThemeGray" },
    SnacksPickerGitStatusUntracked = { link = "ThemeGitUntracked" },
    SnacksPickerPathIgnored = { link = "ThemeGitIgnored" },
    SnacksIndent = { fg = colors.context, nocombine = true },
    SnacksIndentScope = { fg = colors.context_current, nocombine = true },
  }
end

return M
