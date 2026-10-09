local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    DiagnosticError = { link = "ThemeError" },
    DiagnosticWarn = { link = "ThemeWarning" },
    DiagnosticInfo = { link = "ThemeInfo" },
    DiagnosticHint = { link = "ThemeHint" },
    DiagnosticOk = { link = "ThemeSuccess" },
    DiagnosticDeprecated = { strikethrough = config.strikethrough },
    DiagnosticUnnecessary = { link = "ThemeDisabledBlue" },
    DiagnosticSignError = { link = "ThemeErrorSign" },
    DiagnosticSignWarn = { link = "ThemeWarningSign" },
    DiagnosticSignInfo = { link = "ThemeInfoSign" },
    DiagnosticSignHint = { link = "ThemeHintSign" },
    DiagnosticSignOk = { link = "ThemeSuccessSign" },
    DiagnosticUnderlineError = { link = "ThemeErrorUnderline" },
    DiagnosticUnderlineWarn = { link = "ThemeWarningUnderline" },
    DiagnosticUnderlineInfo = { link = "ThemeInfoUnderline" },
    DiagnosticUnderlineHint = { link = "ThemeHintUnderline" },
    DiagnosticUnderlineOk = { link = "ThemeSuccessUnderline" },
    DiagnosticFloatingError = { link = "ThemeError" },
    DiagnosticFloatingWarn = { link = "ThemeWarning" },
    DiagnosticFloatingInfo = { link = "ThemeInfo" },
    DiagnosticFloatingHint = { link = "ThemeHint" },
    DiagnosticFloatingOk = { link = "ThemeSuccess" },
    DiagnosticVirtualTextError = { link = "ThemeError" },
    DiagnosticVirtualTextWarn = { link = "ThemeWarning" },
    DiagnosticVirtualTextInfo = { link = "ThemeInfo" },
    DiagnosticVirtualTextHint = { link = "ThemeHint" },
    DiagnosticVirtualTextOk = { link = "ThemeSuccess" },
    LspReferenceRead = { bg = colors.popup_highlight_gray },
    LspReferenceTarget = { link = "Visual" },
    LspReferenceText = { bg = colors.popup_highlight_gray },
    LspReferenceWrite = { bg = colors.popup_highlight_gray },
    LspCodeLens = { link = "ThemeGray" },
    LspSignatureActiveParameter = { link = "Search" },
    LspInlayHint = { fg = colors.suggestion, italic = config.italic.comments },
  }
end

return M
