local M = {}

--- Generate the theme colors according to `vim.o.background`, defaulting to light.
function M.generate()
	if vim.o.background == "dark" then
	else
		M.bg = "#DEDEDE"
		M.bg2 = "#E3E3E3"
		M.fg = "#232830"

		M.black = "#1E1B1F"
		M.gray = "#9CA0A4"
		M.lgray = "#D0D0D0"
		M.llgray = "#D6D6D6"
		M.grayblue = "#d8e4f8"
		M.blue = "#2B2A80"
		M.lblue = "#a3cff4"
		M.cyan = "#15B097"
		M.lcyan = "#b7e6e1"
		M.dgreen = "#006A4F"
		M.green = "#95E575"
		M.lgreen = "#d0f1a6"
		M.dyellow = "#BA5624"
		M.yellow = "#fea346"
		M.lyellow = "#ffdeaa"
		M.dred = "#6B0F1A"
		M.red = "#D10000"
		M.lred = "#FF8787"
		M.dpurple = "#5c284f"
		M.purple = "#C880B7"
		M.lpurple = "#C7B2C2"
	end
end

return M
