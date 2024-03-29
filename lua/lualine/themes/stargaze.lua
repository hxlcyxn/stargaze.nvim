local colors = require("stargaze.colors")

return {
	normal = {
		a = { fg = colors.bg, bg = colors.fg },
		b = { fg = colors.fg, bg = colors.float },
		c = { fg = colors.fg, bg = colors.bg2 },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.variable },
		b = { fg = colors.fg, bg = colors.uri },
		c = { fg = colors.fg, bg = colors.bg2 },
	},
	visual = {
		a = { fg = colors.fg, bg = colors.trace },
		b = { fg = colors.fg, bg = colors.trace1 },
		c = { fg = colors.fg, bg = colors.bg2 },
	},
	replace = {
		a = { fg = colors.fg, bg = colors.error },
		b = { fg = colors.fg, bg = colors.error1 },
		c = { fg = colors.fg, bg = colors.bg2 },
	},
}
