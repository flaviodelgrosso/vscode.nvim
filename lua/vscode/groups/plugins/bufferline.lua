local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  local transparent = config.transparent_mode
  -- bufferline derives inactive tab colors from `Comment` (green); it applies its
  -- own groups with `default = true`, so groups defined here take precedence.
  return {
    BufferLineBackground = { fg = colors.muted, bg = not transparent and colors.bg2 or nil },
    BufferLineBufferVisible = { fg = colors.muted, bg = not transparent and colors.bg0 or nil },
  }
end

return M
