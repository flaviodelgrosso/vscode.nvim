local M = {}

---@param colors table
---@param config ThemeConfig
---@return table<string, HighlightDefinition>
function M.get(colors, config)
  local groups = {}
  local plugin_modules = {
    "vscode.groups.plugins.git",
    "vscode.groups.plugins.telescope",
    "vscode.groups.plugins.snacks",
    "vscode.groups.plugins.cmp",
    "vscode.groups.plugins.dap",
    "vscode.groups.plugins.neo_tree",
    "vscode.groups.plugins.noice",
    "vscode.groups.plugins.mini",
    "vscode.groups.plugins.markdown",
    "vscode.groups.plugins.mason",
    "vscode.groups.plugins.misc",
  }
  for _, mod in ipairs(plugin_modules) do
    groups = vim.tbl_extend("force", groups, require(mod).get(colors, config))
  end
  return groups
end

return M
