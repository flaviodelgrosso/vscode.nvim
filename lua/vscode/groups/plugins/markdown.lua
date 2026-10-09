local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    markdownItalic = { fg = colors.fg1, italic = config.italic.emphasis },
    markdownBold = { fg = colors.blue, bold = config.bold },
    markdownBoldItalic = { fg = colors.blue, bold = config.bold, italic = config.italic.emphasis },
    markdownH1 = { fg = colors.blue, bold = config.bold },
    markdownH2 = { fg = colors.orange, bold = config.bold },
    markdownH3 = { fg = colors.yellow, bold = config.bold },
    markdownH4 = { fg = colors.green, bold = config.bold },
    markdownH5 = { fg = colors.blue, bold = config.bold },
    markdownH6 = { fg = colors.pink, bold = config.bold },
    markdownCode = { link = "ThemeOrange" },
    markdownCodeBlock = { link = "ThemeOrange" },
    markdownCodeDelimiter = { link = "ThemeFg1" },
    markdownBlockquote = { link = "ThemeGray" },
    markdownListMarker = { link = "ThemeBlue" },
    markdownOrderedListMarker = { link = "ThemeBlue" },
    markdownRule = { fg = colors.blue, bold = config.bold },
    markdownHeadingRule = { fg = colors.blue, bold = config.bold },
    markdownUrlDelimiter = { link = "ThemeFg3" },
    markdownLinkDelimiter = { link = "ThemeFg3" },
    markdownLinkTextDelimiter = { link = "ThemeFg3" },
    markdownHeadingDelimiter = { link = "ThemeBlue" },
    markdownUrl = { fg = colors.fg1, underline = config.underline },
    markdownUrlTitleDelimiter = { link = "ThemeOrange" },
    markdownLinkText = { link = "ThemeOrange" },
    markdownIdDeclaration = { link = "markdownLinkText" },
    markdownFootnote = { link = "ThemeOrange" },
    markdownFootnoteDefinition = { link = "ThemeOrange" },
    markdownEscape = { link = "ThemeOrange" },
    RenderMarkdownH1 = { fg = colors.blue, bold = config.bold },
    RenderMarkdownH2 = { fg = colors.orange, bold = config.bold },
    RenderMarkdownH3 = { fg = colors.yellow, bold = config.bold },
    RenderMarkdownH4 = { fg = colors.green, bold = config.bold },
    RenderMarkdownH5 = { fg = colors.blue, bold = config.bold },
    RenderMarkdownH6 = { fg = colors.pink, bold = config.bold },
    RenderMarkdownH1Bg = { bg = colors.popup_highlight_gray, bold = config.bold },
    RenderMarkdownH2Bg = { bg = colors.popup_highlight_gray, bold = config.bold },
    RenderMarkdownH3Bg = { bg = colors.popup_highlight_gray, bold = config.bold },
    RenderMarkdownH4Bg = { bg = colors.popup_highlight_gray, bold = config.bold },
    RenderMarkdownH5Bg = { bg = colors.popup_highlight_gray, bold = config.bold },
    RenderMarkdownH6Bg = { bg = colors.popup_highlight_gray, bold = config.bold },
  }
end

return M
