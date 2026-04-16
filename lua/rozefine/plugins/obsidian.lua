--- Rozefine for Obsidian(epwalsh)
--- https://github.com/epwalsh/obsidian.nvim
---
--- @usage
--- local highlights = require("rozefine.plugins.obsidian")
--- require("obsidian").setup({ ui = {hl_groups = highlights} })

local p = require("rozefine.palette")

return {
	ObsidianBullet = { fg = p.muted },
	ObsidianRefText = { underline = true, fg = p.iris },
	ObsidianDone = { bold = true, fg = p.foam }
}
