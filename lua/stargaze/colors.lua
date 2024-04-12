local M = {}

--- Generate the theme colors according to `vim.o.background`, defaulting to light.
function M.generate()
	if vim.o.background == "dark" then
		M.bg = "#101017"
		M.bg2 = "#16161e"

		M.fg = "#d9d9d9"
		M.fg2 = "#cbcbcb"
		M.dgray = "#b0b0b0"
		M.gray = "#53515b"
		M.lgray = "#18181b"
		M.grayblue = "#0c0c20"
		M.dblue = "#312fb0"
		M.lblue = "#0c3768"
		M.cyan = "#0e7867"
		M.lcyan = "#97c6c1"
		M.dgreen = "#477112"
		M.lgreen = "#00271d"
		M.dorange = "#BA5624"
		M.orange = "#fea346"
		M.lorange = "#ffdeaa"
		M.dred = "#6B0F1A"
		M.red = "#D10000"
		M.lred = "#FF8787"
		M.dpurple = "#5c284f"
		M.purple = "#C880B7"
		M.lpurple = "#C7B2C2"
	else
		M.bg = "#DEDEDE"
		M.bg2 = "#E3E3E3"
		M.fg = "#232830"
		M.fg2 = "#1E1B1F"

		M.dgray = "#9CA0A4"
		M.gray = "#D0D0D0"
		M.lgray = "#D6D6D6"
		M.grayblue = "#dde5f3"
		M.dblue = "#2B2A80"
		M.lblue = "#a3cff4"
		M.cyan = "#15B097"
		M.lcyan = "#c9e4e1"
		M.dgreen = "#006A4F"
		M.green = "#95E575"
		M.lgreen = "#cfe8af"
		M.dorange = "#BA5624"
		M.orange = "#fea346"
		M.lorange = "#ffdeaa"
		M.dred = "#6B0F1A"
		M.red = "#D10000"
		M.lred = "#FF8787"
		M.dpurple = "#5c284f"
		M.purple = "#C880B7"
		M.lpurple = "#C7B2C2"
	end
end

return M
