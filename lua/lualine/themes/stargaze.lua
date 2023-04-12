local colors = require("stargaze.colors")

return {
	normal = {
		a = { fg = colors.fg, bg = colors.float },
		b = { fg = colors.fg, bg = colors.bg2 },
		c = { fg = colors.fg, bg = colors.bg },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.variable },
		b = { fg = colors.bg, bg = colors.uri },
		c = { fg = colors.fg, bg = colors.bg },
	},
	visual = {
		a = { fg = colors.fg, bg = colors.trace },
		b = { fg = colors.fg, bg = colors.trace1 },
		c = { fg = colors.fg, bg = colors.bg },
	},
	replace = {
		a = { fg = colors.fg, bg = colors.warn },
		b = { fg = colors.fg, bg = colors.warn1 },
		c = { fg = colors.fg, bg = colors.bg },
	},
}
