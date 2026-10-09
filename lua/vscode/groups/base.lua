local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  ---@param fg string
  ---@return HighlightDefinition
  local function sign(fg)
    return config.transparent_mode and { fg = fg, reverse = config.invert_signs }
      or { fg = fg, bg = colors.bg0, reverse = config.invert_signs }
  end

  ---@param sp string
  ---@return HighlightDefinition
  local function undercurl(sp)
    return { undercurl = config.undercurl, sp = sp }
  end

  return {
    ThemeFg0 = { fg = colors.fg0 },
    ThemeFg1 = { fg = colors.fg1 },
    ThemeFg2 = { fg = colors.fg2 },
    ThemeFg3 = { fg = colors.fg3 },
    ThemeFg4 = { fg = colors.fg4 },
    ThemeGray = { fg = colors.muted },
    ThemeGrayBold = { fg = colors.muted, bold = config.bold },
    ThemeBg2 = { fg = colors.bg2 },
    ThemeBg3 = { fg = colors.bg3 },
    ThemeBg4 = { fg = colors.bg4 },

    -- Syntax colors
    ThemeBlue = { fg = colors.blue },
    ThemeBlueBold = { fg = colors.blue, bold = config.bold },
    ThemeAccentBlue = { fg = colors.accent_blue },
    ThemeMediumBlue = { fg = colors.medium_blue },
    ThemeMediumBlueBold = { fg = colors.medium_blue, bold = config.bold },
    ThemeLightBlue = { fg = colors.light_blue },
    ThemeDisabledBlue = { fg = colors.disabled_blue },
    ThemeBlueGreen = { fg = colors.blue_green },
    ThemeBlueGreenBold = { fg = colors.blue_green, bold = config.bold },
    ThemeGreen = { fg = colors.green },
    ThemeLightGreen = { fg = colors.light_green },
    ThemeYellow = { fg = colors.yellow },
    ThemeDarkYellow = { fg = colors.dark_yellow },
    ThemeYellowOrange = { fg = colors.yellow_orange },
    ThemeYellowOrangeBold = { fg = colors.yellow_orange, bold = config.bold },
    ThemeOrange = { fg = colors.orange },
    ThemeLightRed = { fg = colors.light_red },
    ThemeRed = { fg = colors.red },
    ThemeRedBold = { fg = colors.red, bold = config.bold },
    ThemePink = { fg = colors.pink },
    ThemePinkBold = { fg = colors.pink, bold = config.bold },
    ThemeViolet = { fg = colors.violet },

    -- Semantic roles
    ThemeError = { fg = colors.error },
    ThemeErrorSign = sign(colors.error),
    ThemeErrorUnderline = undercurl(colors.error),
    ThemeWarning = { fg = colors.warning },
    ThemeWarningSign = sign(colors.warning),
    ThemeWarningUnderline = undercurl(colors.warning),
    ThemeInfo = { fg = colors.info },
    ThemeInfoSign = sign(colors.info),
    ThemeInfoUnderline = undercurl(colors.info),
    ThemeHint = { fg = colors.hint },
    ThemeHintSign = sign(colors.hint),
    ThemeHintUnderline = undercurl(colors.hint),
    ThemeSuccess = { fg = colors.success },
    ThemeSuccessSign = sign(colors.success),
    ThemeSuccessUnderline = undercurl(colors.success),
    ThemeVioletUnderline = undercurl(colors.violet),

    -- Gutter signs (git uses the syntax green/yellow/red)
    ThemeGreenSign = sign(colors.green),
    ThemeYellowSign = sign(colors.yellow),
    ThemeRedSign = sign(colors.red),
    ThemeDarkYellowSign = sign(colors.dark_yellow),

    -- Git status
    ThemeGitAdded = { fg = colors.git_added },
    ThemeGitAddedBold = { fg = colors.git_added, bold = config.bold },
    ThemeGitModified = { fg = colors.git_modified },
    ThemeGitModifiedBold = { fg = colors.git_modified, bold = config.bold },
    ThemeGitDeleted = { fg = colors.git_deleted },
    ThemeGitDeletedBold = { fg = colors.git_deleted, bold = config.bold },
    ThemeGitRenamed = { fg = colors.git_renamed },
    ThemeGitUntracked = { fg = colors.git_untracked },
    ThemeGitIgnored = { fg = colors.git_ignored },
    ThemeGitConflicting = { fg = colors.git_conflicting },
    ThemeGitSubmodule = { fg = colors.git_submodule },
  }
end

return M
