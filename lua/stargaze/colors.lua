local M = {}

--- Generate the theme colors according to `vim.o.background`, defaulting to light.
function M.generate()
	if vim.o.background == "dark" then
	else
		M.bg = "#EAEAEA"
		M.fg = "#232830"

		M.black = "#1E1B1F"
		M.gray = "#9CA0A4"
		M.lgray = "#D6D6D6"
		M.llgray = "#E3E3E3"
		M.grayblue = "#d8e4f8"
		M.blue = "#2B2A80"
		M.lblue = "#a3cff4"
		M.cyan = "#15B097"
		M.lcyan = "#89D8D9"
		M.green = "#95E575"
		M.lgreen = "#d0f1a6"
		M.yellow = "#ffac2a"
		M.lyellow = "#ffdeaa"
		M.red = "#D10000"
		M.lred = "#FF8787"
		M.purple = "#C880B7"
		M.lpurple = "#C7B2C2"
	end
end

return M
