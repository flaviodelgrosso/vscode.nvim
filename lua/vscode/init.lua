---@class VSCodeTheme
---@field config ThemeConfig
---@field palette ThemePalette
local VSCodeTheme = {}

local default_config = require("vscode.config").default
local palette = require("vscode.palette")
local colors_mod = require("vscode.colors")
local groups_mod = require("vscode.groups")

VSCodeTheme.config = vim.deepcopy(default_config)
VSCodeTheme.palette = palette

---@param config ThemeConfig?
VSCodeTheme.setup = function(config)
  VSCodeTheme.config = vim.deepcopy(default_config)
  VSCodeTheme.config = vim.tbl_deep_extend("force", VSCodeTheme.config, config or {})
end

--- main load function
VSCodeTheme.load = function()
  if vim.version().minor < 8 then
    vim.notify_once("vscode: you must use neovim 0.8 or higher")
    return
  end

  -- reset colors
  if vim.g.colors_name then
    vim.cmd.hi("clear")
  end
  vim.g.colors_name = "vscode"
  vim.o.termguicolors = true
  vim.o.background = "dark"

  local colors = colors_mod.get(VSCodeTheme.palette, VSCodeTheme.config)

  if VSCodeTheme.config.terminal_colors then
    colors_mod.setup_terminal_colors(colors)
  end

  local groups = groups_mod.get(colors, VSCodeTheme.config)

  -- add highlights
  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return VSCodeTheme
