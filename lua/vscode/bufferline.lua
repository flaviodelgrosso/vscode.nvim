local M = {}

--- Highlight overrides for akinsho/bufferline.nvim.
--- bufferline derives inactive tab colors from `Comment` (green), so they must be
--- passed through its `highlights` option:
--- `require("bufferline").setup({ highlights = require("vscode.bufferline").get })`
---@return table<string, table>
function M.get()
  local vscode = require("vscode")
  local colors = require("vscode.colors").get(vscode.palette, vscode.config)
  return {
    background = { fg = colors.muted },
    buffer_visible = { fg = colors.muted },
  }
end

return M
