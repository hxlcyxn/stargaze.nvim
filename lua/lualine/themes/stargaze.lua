local colors = require("stargaze.colors")

return {
	normal = {
		a = { fg = colors.bg, bg = colors.fg },
		b = { fg = colors.fg, bg = colors.lgray },
		c = { fg = colors.fg, bg = colors.bg2 },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.dblue },
		b = { fg = colors.fg, bg = colors.lblue },
		c = { fg = colors.fg, bg = colors.bg2 },
	},
	visual = {
		a = { fg = colors.fg, bg = colors.purple },
		b = { fg = colors.fg, bg = colors.lpurple },
		c = { fg = colors.fg, bg = colors.bg2 },
	},
	replace = {
		a = { fg = colors.fg, bg = colors.red },
		b = { fg = colors.fg, bg = colors.lred },
		c = { fg = colors.fg, bg = colors.bg2 },
	},
}
