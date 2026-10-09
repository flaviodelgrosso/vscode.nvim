local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  local groups = {}
  local modules = {
    "vscode.groups.base",
    "vscode.groups.editor",
    "vscode.groups.syntax",
    "vscode.groups.diagnostics",
    "vscode.groups.treesitter",
    "vscode.groups.plugins",
  }
  for _, mod in ipairs(modules) do
    groups = vim.tbl_extend("force", groups, require(mod).get(colors, config))
  end

  for group, hl in pairs(config.overrides) do
    if groups[group] then
      groups[group].link = nil
    end
    groups[group] = vim.tbl_extend("force", groups[group] or {}, hl)
  end

  return groups
end

return M
