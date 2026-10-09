local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    -- Keywords & control flow (pink)
    Statement = { link = "ThemePink" },
    Conditional = { link = "ThemePink" },
    Repeat = { link = "ThemePink" },
    Label = { link = "ThemePink" },
    Exception = { link = "ThemePink" },
    Keyword = { link = "ThemePink" },
    PreProc = { link = "ThemePink" },
    Include = { link = "ThemePink" },
    Define = { link = "ThemePink" },
    PreCondit = { link = "ThemePink" },
    Macro = { link = "ThemePink" },

    -- Functions (yellow)
    Function = { link = "ThemeYellow" },

    -- Variables (light blue)
    Identifier = { link = "ThemeLightBlue" },

    -- Types & storage (blue / blue-green)
    Type = { link = "ThemeBlue" },
    StorageClass = { link = "ThemeBlue" },
    Typedef = { link = "ThemeBlue" },
    Structure = { link = "ThemeBlueGreen" },

    -- Constants (blue)
    Constant = { link = "ThemeBlue" },
    Boolean = { link = "ThemeBlue" },

    -- Numbers (light green)
    Number = { link = "ThemeLightGreen" },
    Float = { link = "ThemeLightGreen" },

    -- Strings (orange)
    String = { fg = colors.orange, italic = config.italic.strings },
    Character = { link = "ThemeOrange" },

    -- Specials
    Special = { link = "ThemeYellowOrange" },
    SpecialChar = { link = "ThemeFg1" },
    Tag = { link = "ThemeFg1" },
    Debug = { link = "ThemeFg1" },
    Ignore = { link = "ThemeFg1" },

    -- Operators & punctuation (foreground)
    Operator = { fg = colors.fg1, italic = config.italic.operators },
    Delimiter = { link = "ThemeFg1" },

    -- Comments (green)
    Comment = { fg = colors.green, italic = config.italic.comments },
    SpecialComment = { link = "ThemeGreen" },
    Todo = { fg = colors.yellow_orange, bold = config.bold, italic = config.italic.comments },
    Done = { fg = colors.blue_green, bold = config.bold, italic = config.italic.comments },
    Error = { fg = colors.red, undercurl = config.undercurl, sp = colors.red, reverse = config.inverse },
  }
end

return M
