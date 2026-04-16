--- Rozefine for markid
--- https://github.com/David-Kunz/markid
---
--- @usage
--- local highlights = require("rozefine.plugins.markid")
--- require("nvim-treesitter.configs").setup({ markid = { enable = true, colors = highlights } })

local p = require("rozefine.palette")

return { p.foam, p.rose, p.iris }
