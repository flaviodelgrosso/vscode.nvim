# vscode.nvim

A Neovim dark colorscheme inspired by the Visual Studio Code Dark theme

## Features

- Dark-only theme
- Tree-sitter and LSP-friendly highlight groups
- Plugin integrations for common UI/tooling plugins
- Configurable highlight overrides

## Installation

### lazy.nvim

```lua
{
  "flaviodelgrosso/vscode.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("vscode")
  end,
}
```

## Configuration

```lua
require("vscode").setup({
  terminal_colors = true,
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = false,
    emphasis = true,
    comments = false,
    operators = false,
    folds = false,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = false,
  contrast = "", -- "", "soft", "hard"
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

vim.cmd.colorscheme("vscode")
```

## Config Details

- `terminal_colors`: set terminal ANSI colors (`vim.g.terminal_color_*`)
- `contrast`: controls base surface/diff intensity (`""`, `"soft"`, `"hard"`)
- `inverse`: use reversed accent colors for search, cursor and errors instead of VSCode background highlights
- `transparent_mode`: removes background from main editor surfaces
- `dim_inactive`: dims inactive windows
- `overrides`: override any highlight group directly

## Examples

### Hard contrast

```lua
require("vscode").setup({
  contrast = "hard",
})
vim.cmd.colorscheme("vscode")
```

### Transparent background

```lua
require("vscode").setup({
  transparent_mode = true,
})
vim.cmd.colorscheme("vscode")
```

### Highlight override

```lua
require("vscode").setup({
  overrides = {
    Comment = { italic = true },
    NormalFloat = { bg = "#252526" },
    CursorLine = { bg = "#2A2D2E" },
  },
})
vim.cmd.colorscheme("vscode")
```

## Requirements

- Neovim `>= 0.8`

## License

MIT. See `LICENSE`.
