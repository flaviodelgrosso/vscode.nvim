local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  local bg0 = not config.transparent_mode and colors.bg0 or nil
  local bg2 = not config.transparent_mode and colors.bg2 or nil

  return {
    gitcommitHeader = { link = "ThemeGray" },
    gitcommitOnBranch = { link = "ThemeGray" },
    gitcommitBranch = { link = "ThemePink" },
    gitcommitComment = { link = "ThemeGray" },
    gitcommitSelectedType = { link = "ThemeGreen" },
    gitcommitSelectedFile = { link = "ThemeGreen" },
    gitcommitDiscardedType = { link = "ThemeRed" },
    gitcommitDiscardedFile = { link = "ThemeRed" },
    gitcommitOverflow = { link = "ThemeRed" },
    gitcommitSummary = { link = "ThemePink" },
    gitcommitBlank = { link = "ThemePink" },
    GitGutterAdd = { link = "ThemeGreenSign" },
    GitGutterChange = { link = "ThemeYellowSign" },
    GitGutterDelete = { link = "ThemeRedSign" },
    GitSignsAdd = { link = "ThemeGreenSign" },
    GitSignsChange = { link = "ThemeYellowSign" },
    GitSignsDelete = { link = "ThemeRedSign" },
    GitSignsAddLn = { fg = colors.bg0, bg = colors.green },
    GitSignsChangeLn = { fg = colors.bg0, bg = colors.yellow },
    GitSignsDeleteLn = { fg = colors.bg0, bg = colors.red },
    diffAdded = { link = "DiffAdd" },
    diffRemoved = { link = "DiffDelete" },
    diffChanged = { link = "DiffChange" },
    diffFile = { link = "ThemeYellowOrange" },
    diffNewFile = { link = "ThemeGitAdded" },
    diffOldFile = { link = "ThemeGitDeleted" },
    diffLine = { link = "ThemeBlueGreen" },
    diffIndexLine = { link = "ThemeGray" },
    NeogitWinSeparator = { link = "WinSeparator" },
    NeogitDiffAdd = { fg = colors.git_added, bg = colors.diff_add },
    NeogitDiffAddHighlight = { fg = colors.git_added, bg = colors.diff_add },
    NeogitDiffContext = { fg = colors.fg0, bg = bg2 },
    NeogitDiffContextHighlight = { fg = colors.fg0, bg = colors.bg4 },
    NeogitDiffDelete = { fg = colors.git_deleted, bg = colors.diff_change },
    NeogitDiffDeleteHighlight = { fg = colors.git_deleted, bg = colors.diff_delete },
    NeogitDiffHeader = { fg = colors.fg3, bg = bg0 },
    NeogitDiffHeaderHighlight = { fg = colors.fg3, bg = bg0 },
    NeogitHunkHeader = { fg = colors.git_modified, bg = bg2 },
    NeogitHunkHeaderHighlight = { fg = colors.git_modified, bg = colors.bg4 },
    NeogitDiffAddCursor = { link = "NeogitDiffAddHighlight" },
    NeogitDiffContextCursor = { link = "NeogitDiffContextHighlight" },
    NeogitDiffDeleteCursor = { link = "NeogitDiffDeleteHighlight" },
    NeogitHunkHeaderCursor = { link = "NeogitHunkHeaderHighlight" },
    DiffviewStatusModified = { link = "ThemeGitModifiedBold" },
    DiffviewFilePanelInsertions = { link = "ThemeGitAddedBold" },
    DiffviewFilePanelDeletions = { link = "ThemeGitDeletedBold" },
  }
end

return M
