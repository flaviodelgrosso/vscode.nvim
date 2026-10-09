local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  return {
    ["@comment"] = { link = "Comment" },
    ["@none"] = { bg = "NONE", fg = "NONE" },
    ["@error"] = { link = "ThemeRed" },
    ["@preproc"] = { link = "PreProc" },
    ["@define"] = { link = "Define" },
    ["@operator"] = { link = "Operator" },
    ["@punctuation"] = { link = "Delimiter" },
    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { link = "Delimiter" },
    ["@punctuation.special"] = { link = "Delimiter" },

    -- Strings (orange)
    ["@string"] = { link = "String" },
    ["@string.regex"] = { link = "@string.regexp" },
    ["@string.regexp"] = { link = "String" },
    ["@string.escape"] = { fg = colors.yellow_orange, bold = config.bold },
    ["@string.special"] = { link = "SpecialChar" },
    ["@string.special.path"] = { link = "Underlined" },
    ["@string.special.symbol"] = { link = "Identifier" },
    ["@string.special.url"] = { link = "@markup.link.url" },

    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },
    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },
    ["@float"] = { link = "@number.float" },

    -- Functions (yellow)
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Function" },
    ["@function.call"] = { link = "Function" },
    ["@function.macro"] = { link = "Function" },
    ["@function.method"] = { link = "Function" },
    ["@function.method.call"] = { link = "Function" },
    ["@method"] = { link = "@function.method" },
    ["@method.call"] = { link = "@function.method.call" },
    ["@constructor"] = { link = "ThemeBlue" },
    ["@constructor.python"] = { link = "ThemeBlueGreen" },
    ["@annotation"] = { link = "ThemeYellow" },
    ["@attribute"] = { link = "ThemeYellow" },
    ["@attribute.builtin"] = { link = "ThemeBlueGreen" },

    -- Parameters (light blue)
    ["@parameter"] = { link = "@variable.parameter" },
    ["@variable.parameter"] = { link = "ThemeLightBlue" },
    ["@variable.parameter.reference"] = { link = "ThemeLightBlue" },

    -- Keywords (storage/declaration blue, control flow pink)
    ["@keyword"] = { link = "ThemeBlue" },
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.coroutine"] = { link = "ThemePink" },
    ["@keyword.debug"] = { link = "Debug" },
    ["@keyword.directive"] = { link = "PreProc" },
    ["@keyword.directive.define"] = { link = "Define" },
    ["@keyword.exception"] = { link = "Exception" },
    ["@keyword.function"] = { link = "ThemeBlue" },
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.modifier"] = { link = "ThemeBlue" },
    ["@keyword.operator"] = { link = "ThemeBlue" },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.return"] = { link = "ThemePink" },
    ["@keyword.storage"] = { link = "StorageClass" },
    ["@keyword.type"] = { link = "ThemeBlue" },
    ["@conditional"] = { link = "@keyword.conditional" },
    ["@repeat"] = { link = "@keyword.repeat" },
    ["@debug"] = { link = "@keyword.debug" },
    ["@label"] = { link = "ThemeLightBlue" },
    ["@include"] = { link = "@keyword.import" },
    ["@exception"] = { link = "@keyword.exception" },

    -- Types (blue-green)
    ["@type"] = { link = "ThemeBlueGreen" },
    ["@type.builtin"] = { link = "ThemeBlue" },
    ["@type.builtin.typescript"] = { link = "@type" },
    ["@type.builtin.tsx"] = { link = "@type" },
    ["@type.definition"] = { link = "@type" },
    ["@type.qualifier"] = { link = "ThemeBlue" },
    ["@storageclass"] = { link = "@keyword.storage" },
    ["@structure"] = { link = "ThemeLightBlue" },

    -- Fields & properties (light blue)
    ["@field"] = { link = "@variable.member" },
    ["@property"] = { link = "ThemeLightBlue" },

    -- Variables (light blue)
    ["@variable"] = { link = "ThemeLightBlue" },
    ["@variable.builtin"] = { link = "ThemeBlue" },
    ["@variable.member"] = { link = "ThemeLightBlue" },

    -- Constants (accent blue)
    ["@constant"] = { link = "ThemeAccentBlue" },
    ["@constant.builtin"] = { link = "ThemeBlue" },
    ["@constant.macro"] = { link = "ThemeBlueGreen" },

    -- Modules and namespaces (blue-green)
    ["@module"] = { link = "ThemeBlueGreen" },
    ["@namespace"] = { link = "@module" },
    ["@symbol"] = { link = "Identifier" },

    -- Tags (blue)
    ["@tag"] = { link = "ThemeBlue" },
    ["@tag.builtin"] = { link = "ThemeBlue" },
    ["@tag.attribute"] = { link = "ThemeLightBlue" },
    ["@tag.delimiter"] = { link = "ThemeGray" },

    ["@macro"] = { link = "Macro" },

    -- Markup
    ["@markup"] = { link = "ThemeFg1" },
    ["@markup.strong"] = { fg = colors.blue, bold = config.bold },
    ["@markup.italic"] = { fg = colors.fg1, italic = config.italic.emphasis },
    ["@markup.underline"] = { fg = colors.yellow_orange, underline = config.underline },
    ["@markup.strikethrough"] = { fg = colors.fg1, strikethrough = config.strikethrough },
    ["@markup.heading"] = { fg = colors.blue, bold = config.bold },
    ["@markup.heading.1.markdown"] = { fg = colors.blue, bold = config.bold },
    ["@markup.heading.2.markdown"] = { fg = colors.orange, bold = config.bold },
    ["@markup.heading.3.markdown"] = { fg = colors.yellow, bold = config.bold },
    ["@markup.heading.4.markdown"] = { fg = colors.green, bold = config.bold },
    ["@markup.heading.5.markdown"] = { fg = colors.blue, bold = config.bold },
    ["@markup.heading.6.markdown"] = { fg = colors.pink, bold = config.bold },
    ["@markup.quote"] = { link = "ThemeGray" },
    ["@markup.raw"] = { link = "ThemeFg1" },
    ["@markup.raw.markdown"] = { link = "ThemeOrange" },
    ["@markup.raw.markdown_inline"] = { link = "ThemeOrange" },
    ["@markup.math"] = { link = "Special" },
    ["@markup.environment"] = { link = "Macro" },
    ["@markup.environment.name"] = { link = "Type" },
    ["@markup.link"] = { link = "ThemeLightBlue" },
    ["@markup.link.label"] = { fg = colors.light_blue, underline = config.underline },
    ["@markup.link.url"] = { fg = colors.fg1, underline = config.underline },
    ["@markup.list"] = { link = "ThemeBlue" },
    ["@markup.list.checked"] = { link = "Todo" },
    ["@markup.list.unchecked"] = { link = "Todo" },

    ["@comment.todo"] = { link = "Todo" },
    ["@comment.note"] = { fg = colors.blue_green, bold = config.bold },
    ["@comment.warning"] = { fg = colors.yellow_orange, bold = config.bold },
    ["@comment.error"] = { fg = colors.red, bold = config.bold },

    ["@diff.plus"] = { link = "DiffAdd" },
    ["@diff.minus"] = { link = "DiffDelete" },
    ["@diff.delta"] = { link = "DiffChange" },

    -- Legacy @text groups
    ["@text"] = { link = "ThemeFg1" },
    ["@text.strong"] = { link = "@markup.strong" },
    ["@text.emphasis"] = { link = "@markup.italic" },
    ["@text.underline"] = { link = "@markup.underline" },
    ["@text.strike"] = { link = "@markup.strikethrough" },
    ["@text.title"] = { link = "@markup.heading" },
    ["@text.literal"] = { link = "@markup.raw" },
    ["@text.uri"] = { link = "@markup.link.url" },
    ["@text.math"] = { link = "@markup.math" },
    ["@text.environment"] = { link = "@markup.environment" },
    ["@text.environment.name"] = { link = "@markup.environment.name" },
    ["@text.reference"] = { link = "ThemeOrange" },
    ["@text.todo"] = { link = "Todo" },
    ["@text.todo.checked"] = { link = "@markup.list.checked" },
    ["@text.todo.unchecked"] = { link = "@markup.list.unchecked" },
    ["@text.note"] = { link = "@comment.note" },
    ["@text.note.comment"] = { link = "@comment.note" },
    ["@text.warning"] = { link = "@comment.warning" },
    ["@text.danger"] = { link = "@comment.error" },
    ["@text.danger.comment"] = { link = "@comment.error" },
    ["@text.diff.add"] = { link = "@diff.plus" },
    ["@text.diff.delete"] = { link = "@diff.minus" },

    -- LSP semantic tokens
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.comment.c"] = { fg = colors.dim_highlight },
    ["@lsp.type.comment.cpp"] = { fg = colors.dim_highlight },
    ["@lsp.type.decorator"] = { link = "Identifier" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.event"] = { link = "Identifier" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.macro"] = { link = "@constant" },
    ["@lsp.type.member"] = { link = "@function" },
    ["@lsp.type.method"] = { link = "@function.method" },
    ["@lsp.type.modifier"] = { link = "Identifier" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.regexp"] = { link = "ThemeRed" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { link = "@type" },
    ["@lsp.type.variable"] = { link = "@variable" },
    ["@lsp.typemod.keyword.controlFlow"] = { link = "ThemePink" },
    ["@lsp.typemod.property.readonly"] = { link = "@constant" },
    ["@lsp.typemod.type.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.variable.constant"] = { link = "@constant" },
    ["@lsp.typemod.variable.readonly"] = { link = "@constant" },
  }
end

return M
