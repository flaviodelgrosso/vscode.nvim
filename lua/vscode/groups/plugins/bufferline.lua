local M = {}

-- Inactive/visible elements bufferline derives from `Comment` (green).
local inactive = { "Background", "Numbers", "CloseButton", "Duplicate" }
local visible = { "BufferVisible", "NumbersVisible", "CloseButtonVisible", "DuplicateVisible" }
local severities = { "Diagnostic", "Hint", "Info", "Warning", "Error" }

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  local transparent = config.transparent_mode
  local inactive_bg = not transparent and colors.bg2 or nil
  local visible_bg = not transparent and colors.bg0 or nil

  for _, sev in ipairs(severities) do
    table.insert(inactive, sev)
    table.insert(visible, sev .. "Visible")
    if sev ~= "Diagnostic" then
      table.insert(inactive, sev .. "Diagnostic")
      table.insert(visible, sev .. "DiagnosticVisible")
    end
  end

  -- bufferline applies its own groups with `default = true`, so groups defined
  -- here take precedence over its derived (green) colors.
  local groups = {}
  for _, name in ipairs(inactive) do
    groups["BufferLine" .. name] = { fg = colors.muted, bg = inactive_bg }
  end
  for _, name in ipairs(visible) do
    groups["BufferLine" .. name] = { fg = colors.muted, bg = visible_bg }
  end
  return groups
end

return M
