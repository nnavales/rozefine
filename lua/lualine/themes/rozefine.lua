local p = require("rozefine.palette")

return {
	normal = {
		a = { bg = p.base, fg = p.text, gui = "bold" },
		b = { bg = p.base, fg = p.text },
		c = { bg = p.base, fg = p.muted },
	},
	insert = {
		a = { bg = p.base, fg = p.foam, gui = "bold" },
		b = { bg = p.base, fg = p.text },
		c = { bg = p.base, fg = p.muted },
	},
	visual = {
		a = { bg = p.base, fg = p.iris, gui = "bold" },
		b = { bg = p.base, fg = p.text },
		c = { bg = p.base, fg = p.muted },
	},
	replace = {
		a = { bg = p.base, fg = p.pine, gui = "bold" },
		b = { bg = p.base, fg = p.text },
		c = { bg = p.base, fg = p.muted },
	},
	command = {
		a = { bg = p.base, fg = p.love, gui = "bold" },
		b = { bg = p.base, fg = p.text },
		c = { bg = p.base, fg = p.muted },
	},
	inactive = {
		a = { bg = p.base, fg = p.text, gui = "bold" },
		b = { bg = p.base, fg = p.text },
		c = { bg = p._nc, fg = p.muted },
	},
}
