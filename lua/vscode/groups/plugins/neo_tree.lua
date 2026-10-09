local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  local bg1 = not config.transparent_mode and colors.bg1 or nil

  return {
    NeoTreeBufferNumber = { link = "ThemeFg4" },
    NeoTreeCursorLine = { link = "CursorLine" },
    NeoTreeDimText = { fg = colors.fg4 },
    NeoTreeDirectoryIcon = { link = "ThemeGray" },
    NeoTreeDirectoryName = { link = "ThemeFg1" },
    NeoTreeDotfile = { link = "ThemeDisabledBlue" },
    NeoTreeFileIcon = { link = "ThemeViolet" },
    NeoTreeFileName = { link = "ThemeFg1" },
    NeoTreeFileNameOpened = { fg = colors.fg1, bg = bg1 },
    NeoTreeFilterTerm = { link = "ThemeFg1" },
    NeoTreeFloatBorder = { link = "ThemeFg4" },
    NeoTreeFloatTitle = { link = "ThemeFg4" },
    NeoTreeTitleBar = { link = "ThemeFg4" },
    NeoTreeGitAdded = { link = "ThemeGitAdded" },
    NeoTreeGitConflict = { link = "ThemeGitConflicting" },
    NeoTreeGitDeleted = { link = "ThemeGitDeleted" },
    NeoTreeGitIgnored = { link = "ThemeGitIgnored" },
    NeoTreeGitModified = { link = "ThemeGitModified" },
    NeoTreeGitRenamed = { link = "ThemeGitRenamed" },
    NeoTreeGitUntracked = { link = "ThemeGitUntracked" },
    NeoTreeWinSeparator = { link = "WinSeparator" },
  }
end

return M
