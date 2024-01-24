local colors = require("stargaze.colors")

--- Set the terminal colors.
local function set_term_colors()
	vim.g.terminal_color_0 = colors.bg
	vim.g.terminal_color_1 = colors.error
	vim.g.terminal_color_2 = colors.preproc
	vim.g.terminal_color_3 = colors.warn
	vim.g.terminal_color_4 = colors.variable
	vim.g.terminal_color_5 = colors.trace
	vim.g.terminal_color_6 = colors.identifier
	vim.g.terminal_color_7 = colors.nontext
	vim.g.terminal_color_8 = colors.comment
	vim.g.terminal_color_9 = colors.error1
	vim.g.terminal_color_10 = colors.string
	vim.g.terminal_color_11 = colors.warn1
	vim.g.terminal_color_12 = colors.uri
	vim.g.terminal_color_13 = colors.trace1
	vim.g.terminal_color_14 = colors.lcyan
	vim.g.terminal_color_15 = colors.float
	vim.g.terminal_color_background = colors.bg
	vim.g.terminal_color_foreground = colors.fg
end

--- Set the highlight groups.
local function set_groups()
	local groups = {
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { bg = colors.float },
		FloatBorder = { fg = colors.comment },
		FloatTitle = { fg = colors.operator },
		ColorColumn = { bg = colors.comment },
		Cursor = { fg = colors.bg, bg = colors.comment },
		CursorColumn = { bg = colors.grayblue },
		CursorLine = { bg = colors.grayblue },
		CursorLineNr = { fg = colors.operator, bg = colors.grayblue, bold = true },
		LineNr = { fg = colors.operator },

		Directory = { fg = colors.operator },
		VertSplit = { fg = colors.comment, bg = colors.bg },
		Folded = { link = "Comment" },
		FoldColumn = { link = "Comment" },
		SignColumn = { bg = colors.bg },

		MatchParen = { fg = colors.operator, bg = colors.nontext, bold = true },
		ModeMsg = { link = "String" },
		MoreMsg = { link = "String" },
		NonText = { fg = colors.nontext },
		PMenu = { fg = colors.fg, bg = colors.bg2 },
		PMenuSel = { fg = colors.operator, bg = colors.nontext, bold = true },
		PMenuSBar = { bg = colors.comment },
		PMenuThumb = { bg = colors.operator },
		Question = { fg = colors.operator },
		Search = { fg = colors.fg, bg = colors.warn1 },
		IncSearch = { link = "Search" },
		SpecialKey = { fg = colors.comment },
		Title = { fg = colors.operator, bold = true },
		Visual = { bg = colors.nontext },
		Todo = { fg = colors.fg, bg = colors.uri, bold = true },

		Error = { fg = colors.error, bg = colors.error1, bold = true },
		ErrorMsg = { link = "Error" },
		WarningMsg = { fg = colors.warn, bg = colors.warn1 },

		Comment = { fg = colors.comment, bg = colors.bg2 },
		Constant = { fg = colors.variable, bold = true },
		String = { bg = colors.string },
		Identifier = { fg = colors.identifier },
		Keyword = { fg = colors.fg, bold = true },
		Function = { fg = colors.fg },
		Statement = { link = "Keyword" },
		Operator = { fg = colors.operator },
		Exception = { link = "Keyword" },
		PreProc = { fg = colors.preproc },
		Type = { link = "Identifier" },
		Structure = { link = "Constant" },
		Special = { fg = colors.variable },
		Underlined = { underline = true },
		Conceal = { link = "Comment" },

		GitSignsAdd = { fg = colors.string, bg = colors.bg },
		GitSignsChange = { fg = colors.uri, bg = colors.bg },
		GitSignsDelete = { fg = colors.error1, bg = colors.bg},

		DiffAdd = { bg = colors.string },
		DiffAdded = { link = "DiffAdd" },
		DiffDelete = { bg = colors.error1 },
		DiffRemoved = { link = "DiffDelete" },
		DiffChange = { bg = colors.uri },
		DiffChanged = { link = "DiffChange" },

		LspInlayHint = { link = "Comment" },

		DiagnosticError = { link = "Error" },
		DiagnosticWarn = { link = "WarningMsg" },
		DiagnosticInfo = { fg = colors.variable, bg = colors.uri },
		DiagnosticHint = { fg = colors.comment, bg = colors.grayblue },

		DiagnosticUnderlineError = { sp = colors.error, undercurl = true },
		DiagnosticUnderlineWarn = { sp = colors.warn, undercurl = true },
		DiagnosticUnderlineInfo = { sp = colors.variable, undercurl = true },
		DiagnosticUnderlineHint = { sp = colors.comment, undercurl = true },

		rainbowcol1 = { fg = colors.variable },
		rainbowcol2 = { fg = colors.error },
		rainbowcol3 = { fg = colors.comment },
		rainbowcol4 = { fg = colors.trace },
		rainbowcol5 = { fg = colors.warn },
		rainbowcol6 = { fg = colors.preproc },
		rainbowcol7 = { fg = colors.identifier },

		NotifyERRORBorder = { fg = colors.error2 },
		NotifyWARNBorder = { fg = colors.warn2 },
		NotifyINFOBorder = { fg = colors.variable },
		NotifyDEBUGBorder = { fg = colors.comment },
		NotifyTRACEBorder = { fg = colors.trace2 },
		NotifyERRORIcon = { fg = colors.error },
		NotifyWARNIcon = { fg = colors.warn },
		NotifyINFOIcon = { fg = colors.identifier },
		NotifyDEBUGIcon = { fg = colors.comment },
		NotifyTRACEIcon = { fg = colors.trace },
		NotifyERRORTitle = { link = "NotifyERRORIcon" },
		NotifyWARNTitle = { link = "NotifyWARNIcon" },
		NotifyINFOTitle = { link = "NotifyINFOIcon" },
		NotifyDEBUGTitle = { link = "NotifyDEBUGIcon" },
		NotifyTRACETitle = { link = "NotifyTRACEIcon" },

		TelescopeNormal = { link = "NormalFloat" },
		TelescopePromptNormal = { bg = colors.nontext },
		TelescopePromptBorder = { link = "TelescopePromptNormal" },
		TelescopePromptTitle = { fg = colors.bg, bg = colors.fg, bold = true },
		TelescopePreviewNormal = { link = "Normal" },

		FidgetTitle = { link = "Title" },
		FidgetTask = { fg = colors.comment },

		["@markup.link.url"] = { fg = colors.uri, underline = true },
		["@markup.underline"] = { fg = colors.operator, underline = true },
		["@module"] = { link = "Function" },
		["@property"] = { fg = colors.operator },
		["@punctuation"] = { fg = colors.operator },
		["@variable"] = { fg = colors.variable },
		["@variable.member"] = { fg = colors.fg },
		["@variable.parameter"] = { fg = colors.variable, bg = colors.grayblue },
	}

	for group, parameter in pairs(groups) do
		vim.api.nvim_set_hl(0, group, parameter)
	end
end

--- Set all colors.
local function set_colors()
	set_term_colors()
	set_groups()
end

local M = {}

--- Set and use the colorscheme.
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
