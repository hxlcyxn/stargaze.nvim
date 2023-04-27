local M = {}

--- Generate the theme colors according to `vim.o.background`, defaulting to light.
function M.generate()
	if vim.o.background == "dark" then
		M.bg = "#101017"
		M.bg2 = "#16161e"

		M.fg = "#d9d9d9"
		M.operator = "#cbcbcb"
		M.comment = "#b0b0b0"
		M.nontext = "#53515b"
		M.float = "#18181b"
		M.grayblue = "#0c0c20"
		M.variable = "#312fb0"
		M.uri = "#0c3768"
		M.type = "#0e7867"
		M.lcyan = "#97c6c1"
		M.string = "#00271d"
		M.preproc = "#477112"
		M.warn = "#fea346"
		M.warn1 = "#ffdeaa"
		M.warn2 = "#BA5624"
		M.error = "#D10000"
		M.error1 = "#FF8787"
		M.error2 = "#6B0F1A"
		M.trace = "#C880B7"
		M.trace1 = "#C7B2C2"
		M.trace2 = "#5c284f"
	else
		M.bg = "#DEDEDE"
		M.bg2 = "#E3E3E3"
		M.fg = "#232830"

		M.operator = "#1E1B1F"
		M.comment = "#9CA0A4"
		M.nontext = "#D0D0D0"
		M.float = "#D6D6D6"
		M.grayblue = "#d8e4f8"
		M.variable = "#2B2A80"
		M.uri = "#a3cff4"
		M.type = "#15B097"
		M.lcyan = "#b7e6e1"
		M.preproc = "#006A4F"
		M.green = "#95E575"
		M.string = "#d0f1a6"
		M.warn = "#fea346"
		M.warn1 = "#ffdeaa"
		M.warn2 = "#BA5624"
		M.error = "#D10000"
		M.error1 = "#FF8787"
		M.error2 = "#6B0F1A"
		M.trace2 = "#5c284f"
		M.trace = "#C880B7"
		M.trace1 = "#C7B2C2"
	end
end

return M
