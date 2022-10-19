local colors = require("stargaze.colors")

local function set_term_colors()
	vim.g.terminal_color_0 = colors.bg
	vim.g.terminal_color_1 = colors.red
	vim.g.terminal_color_2 = colors.green
	vim.g.terminal_color_3 = colors.yellow
	vim.g.terminal_color_4 = colors.blue
	vim.g.terminal_color_5 = colors.purple
	vim.g.terminal_color_6 = colors.turquoise
	vim.g.terminal_color_7 = colors.lgray
	vim.g.terminal_color_8 = colors.gray
	vim.g.terminal_color_9 = colors.lred
	vim.g.terminal_color_10 = colors.lgreen
	vim.g.terminal_color_11 = colors.lyellow
	vim.g.terminal_color_12 = colors.lblue
	vim.g.terminal_color_13 = colors.lpurple
	vim.g.terminal_color_14 = colors.lturquoise
	vim.g.terminal_color_15 = colors.llgray
	vim.g.terminal_color_background = colors.bg
	vim.g.terminal_color_foreground = colors.fg
end

-- monka comment
local function set_groups()
	local groups = {
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { bg = colors.bg },
		FloatBorder = { fg = colors.gray },
		FloatTitle = { fg = colors.fg },
		ColorColumn = { bg = colors.gray },
		Cursor = { fg = colors.bg, bg = colors.fg },
		CursorColumn = { bg = colors.grayblue },
		CursorLine = { bg = colors.grayblue },
		CursorLineNr = { fg = colors.black, bg = colors.grayblue, bold = true },
		LineNr = { fg = colors.black },

		Directory = { fg = colors.black },
		VertSplit = { fg = colors.gray, bg = colors.bg },
		Folded = { link = "Comment" },
		FoldColumn = { link = "Comment" },
		SignColumn = { bg = colors.bg },

		MatchParen = { fg = colors.black, bg = colors.lgray, bold = true },
		ModeMsg = { link = "String" },
		MoreMsg = { link = "String" },
		NonText = { fg = colors.lgray },
		PMenu = { fg = colors.fg, bg = colors.lgray },
		PMenuSel = { fg = colors.black, bg = colors.gray, bold = true },
		Question = { fg = colors.black },
		Search = { fg = colors.fg, bg = colors.lyellow },
		IncSearch = { link = "Search" },
		SpecialKey = { fg = colors.gray },
		Title = { fg = colors.black, bold = true },
		Visual = { bg = colors.lgray },

		Error = { fg = colors.red, bg = colors.lred, bold = true },
		ErrorMsg = { link = "Error" },
		WarningMsg = { fg = colors.yellow, bg = colors.lyellow },

		Comment = { fg = colors.gray, bg = colors.llgray },
		Constant = { fg = colors.blue, bold = true },
		String = { bg = colors.lgreen },
		Identifier = { fg = colors.turquoise },
		Keyword = { fg = colors.fg, bold = true },
		Function = { fg = colors.fg },
		Statement = { link = "Keyword" },
		Operator = { fg = colors.black },
		Exception = { link = "Keyword" },
		PreProc = { fg = colors.red },
		Type = { link = "Identifier" },
		Structure = { link = "Constant" },
		Special = { fg = colors.blue },
		Underlined = { underline = true },
		Conceal = { link = "Comment" },

		DiffAdd = { bg = colors.lgreen },
		DiffAdded = { link = "DiffAdd" },
		DiffDelete = { bg = colors.lred },
		DiffRemoved = { link = "DiffDelete" },
		DiffChange = { bg = colors.lblue },
		DiffChanged = { link = "DiffChange" },

		DiagnosticError = { link = "Error" },
		DiagnosticWarn = { link = "WarningMsg" },
		DiagnosticInfo = { fg = colors.blue, bg = colors.lblue },
		DiagnosticHint = { fg = colors.gray, bg = colors.grayblue },

		DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
		DiagnosticUnderlineWarn = { sp = colors.yellow, undercurl = true },
		DiagnosticUnderlineInfo = { sp = colors.blue, undercurl = true },
		DiagnosticUnderlineHint = { sp = colors.gray, undercurl = true },

		["@property"] = { fg = colors.black },
		["@field"] = { fg = colors.fg },
		["@parameter"] = { fg = colors.blue, bg = colors.grayblue },
		["@underline"] = { fg = colors.black, underline = true },
		["@variable"] = { fg = colors.blue },
		["@text.uri"] = { fg = colors.lblue, underline = true },
		["@punctuation"] = { fg = colors.black },
	}

	for group, parameter in pairs(groups) do
		vim.api.nvim_set_hl(0, group, parameter)
	end
end

local function set_colors()
	set_term_colors()
	set_groups()
end

local M = {}

function M.colorscheme()
	vim.api.nvim_command("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "stargaze"

	colors.generate()
	set_colors()
end

return M
