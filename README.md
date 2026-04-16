# Rozefine

Rozefine is a personal fork of [rose-pine](https://github.com/rose-pine/neovim) with a customized color palette. All natural pine, faux fur and a bit of soho vibes for the classy minimalist.

## Getting started

Install `rozefine/neovim` using your favourite package manager:

### [lazy.nvim](https://lazy.folke.io/installation)

```lua
return {
  "rozefine/neovim",
  name = "rozefine",
  priority = 1000,
  config = function()
    require("rozefine").setup({})
    vim.cmd.colorscheme("rozefine")
  end,
}
```

## Options

> Configure options _before_ setting colorscheme.

```lua
require("rozefine").setup({
    dim_inactive_windows = true,
    extend_background_behind_borders = true,
    enable = {
        terminal = true,
        legacy_highlights = true,
    },

    styles = {
        bold = false,
        italic = false,
        transparency = false,
    },
})
```

## Testing locally

```bash
nvim -l tests/minit.lua
```
