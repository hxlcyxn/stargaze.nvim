local c = require("stargaze.colors")

--- Set the terminal colors.
local function set_term_colors()
	vim.g.terminal_color_0 = c.bg
	vim.g.terminal_color_1 = c.red
	vim.g.terminal_color_2 = c.dgreen
	vim.g.terminal_color_3 = c.orange
	vim.g.terminal_color_4 = c.dblue
	vim.g.terminal_color_5 = c.purple
	vim.g.terminal_color_6 = c.cyan
	vim.g.terminal_color_7 = c.gray
	vim.g.terminal_color_8 = c.dgray
	vim.g.terminal_color_9 = c.lred
	vim.g.terminal_color_10 = c.lgreen
	vim.g.terminal_color_11 = c.lorange
	vim.g.terminal_color_12 = c.lblue
	vim.g.terminal_color_13 = c.lpurple
	vim.g.terminal_color_14 = c.lcyan
	vim.g.terminal_color_15 = c.lgray
	vim.g.terminal_color_background = c.bg
	vim.g.terminal_color_foreground = c.fg
end

--- Set the highlight groups.
local function set_groups()
	local groups = {
		-- 'highlight-groups'
		Normal = { fg = c.fg, bg = c.bg },
		NormalNC = { link = "Normal" },
		NormalFloat = { link = "Normal" },

		ColorColumn = { bg = c.dgray }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = c.dgray }, -- placeholder characters used with 'conceal'
		CurSearch = { fg = c.fg, bg = c.orange }, -- current search match
		Cursor = { fg = c.bg, bg = c.dgray }, -- character under the cursor
		lCursor = { link = "Cursor" }, -- cursor when "language-mapping" is used
		CursorIM = { link = "Cursor" }, -- cursor when in IME mode
		CursorColumn = { bg = c.grayblue }, -- column of cursor
		CursorLine = { bg = c.grayblue }, -- row of cursor
		Directory = { fg = c.fg2 }, -- directory names
		DiffAdd = { bg = c.lgreen }, -- diff mode: Added line
		DiffDelete = { bg = c.lred }, -- diff mode: Deleted line
		DiffChange = { bg = c.lblue }, -- diff mode: Changed line
		DiffText = { link = "DiffChange" }, -- diff mode: Changed text within a changed line
		TermCursor = { link = "Cursor" }, -- cursor in a focused terminal
		TermCursorNC = { link = "Normal" }, -- cursor in an unfocused terminal
		ErrorMsg = { fg = c.red, bold = true }, -- error messages on the command line
		WinSeparator = { fg = c.dgray, bg = c.bg }, -- vertical separator in windows
		Folded = { fg = c.dblue, bg = c.lgray }, -- line used for closed folds
		FoldColumn = { link = "Folded" }, -- 'foldcolumn'
		SignColumn = { bg = c.bg }, -- column where signs are displayed
		IncSearch = { fg = c.fg, bg = c.lorange }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		Substitute = { fg = c.fg, bg = c.dorange }, -- highlighting for ":substitute" replacement text
		LineNr = { fg = c.fg2 }, -- line number
		CursorLineNr = { fg = c.fg2, bg = c.grayblue, bold = true }, -- line number for cursor line
		CursorLineFold = { fg = c.fg2, bg = c.grayblue }, -- fold for cursor line
		CursorLineSign = { bg = c.grayblue }, -- signcolumn for cursor line
		MatchParen = { fg = c.fg2, bg = c.gray, bold = true }, -- matching bracket etc
		ModeMsg = { link = "String" }, -- 'showmode' message
		MsgArea = { link = "Normal" }, -- Area for messages and cmdline
		MsgSeparator = { fg = c.bg, bg = c.fg }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { link = "String" }, -- 'more-prompt'
		FloatBorder = { fg = c.lgray }, -- border of floating window
		FloatTitle = { fg = c.fg2 }, -- title of floating window
		FloatFooter = { fg = c.dgray }, -- footer of floating window
		PMenu = { fg = c.fg, bg = c.bg2 }, -- popup menu: normal item
		PMenuSel = { fg = c.fg2, bg = c.gray, bold = true }, -- popup menu: selected item
		PMenuKind = { link = "PMenu" }, -- popup menu: normal item "kind"
		PMenuKindSel = { link = "PMenuSel" }, -- popup menu: selected item "kind"
		PMenuExtra = { link = "PMenu" }, -- popup menu: normal item "extra text"
		PMenuExtraSel = { link = "PMenuSel" }, -- popup menu: selected item "extra text"
		PMenuSBar = { fg = c.dgray, bg = c.dgray }, -- popup menu: scrollbar
		PMenuThumb = { fg = c.fg2, bg = c.fg2 }, --	popup menu: Thumb of the scrollbar
		Question = { fg = c.fg2 }, -- hit-enter prompt and yes/no questions
		QuickFixLine = { bg = c.grayblue }, -- current quickfix item
		Search = { fg = c.fg, bg = c.lorange }, -- last search pattern highlighting
		SpecialKey = { fg = c.lgray, bg = c.dblue }, -- unprintable character
		SpellBad = { fg = c.red, undercurl = true }, -- word that is not recognized by the spellchecker
		SpellCap = { link = "SpellBad" }, -- word that should start with a capital
		SpellLocal = { link = "SpellBad" }, -- world that is recognized by the spellchecker as one that is used in another region
		SpellRare = { link = "SpellBad" }, -- word that should start with a capital
		StatusLine = { fg = c.bg, bg = c.fg }, -- status line of current window
		StatusLineNC = { fg = c.bg, bg = c.dgray }, -- status lines of not-current windows
		TabLine = { fg = c.fg, bg = c.dgray }, -- tab pages line, not active tab page label
		TabLineFill = { link = "TabLine" }, -- tab pages line, where there are no labels
		TabLineSel = { fg = c.fg2, bg = c.gray, bold = true }, -- tab pages line, active tab page label
		Title = { fg = c.fg2, bold = true }, -- titles from output
		Visual = { bg = c.gray }, -- visual mode selection
		WarningMsg = { fg = c.orange, bg = c.lorange },
		WildMenu = { link = "PMenuSel" }, -- current match in 'wildmenu' completion
		WinBar = { link = "Normal" }, -- window bar of current window
		WinBarNC = { link = "Normal" }, -- window bar of current window

		-- 'group-name'
		Comment = { fg = c.dgray, bg = c.bg2 }, -- any comment
		Constant = { bold = true }, -- any constant
		String = { bg = c.lgreen }, -- any string constant
		Character = { bg = c.green }, -- a character constant
		Number = { link = "Constant" }, -- a number constant
		Boolean = { link = "Constant" }, -- a boolean constant
		Float = { link = "Constant" }, -- a floating point constant
		Identifier = { link = "Normal" }, -- any variable
		Function = { fg = c.fg }, -- any function name
		Statement = { fg = c.fg, bold = true }, -- any statement
		-- Conditional = {}, -- if, then, else, endif, switch, etc
		-- Repeat = {}, -- for, do, while, etc
		-- Label = {}, -- case, default, etc
		Operator = { fg = c.fg2 }, --	"sizeof", "+", "*", etc
		-- Keyword = { }, -- any other keyword
		-- Exception = { }, -- try, catch, throw
		PreProc = { fg = c.dgreen }, -- generic preprocessor
		-- Include = { }, -- #include
		-- Define = { }, -- #define
		-- Macro = { }, -- same as Define
		-- PreCondit = { }, -- preprocessor conditional
		Type = { bg = c.lcyan }, -- int, long, char, etc
		-- StorageClass = { }, -- static, register, volatile, etc
		Structure = { fg = c.dblue, bold = true }, -- struct, union, enum, etc
		-- Typedef = { }, -- a typedef
		Special = { fg = c.dblue }, -- any special symbol
		-- SpecialChar = { }, -- special character in a constant
		-- Tag = { }, -- you can use CTRL-] on this
		-- Delimiter = { }, -- character that needs attention
		-- SpecialComment = { }, -- special things inside a comment
		-- Debug = { }, -- debugging statements
		Bold = { bold = true }, -- bold things
		Italic = { italic = true }, -- italic things
		Strikethrough = { strikethrough = true }, -- strikethrough things
		Underlined = { underline = true }, -- underlined things
		Error = { fg = c.red, bg = c.lred, bold = true }, -- any erroneous construct
		NonText = { fg = c.gray },
		Todo = { fg = c.fg, bg = c.lblue, bold = true },
		Added = { link = "DiffAdd" }, -- added line in diff
		Changed = { link = "DiffChange" }, -- changed line in diff
		Removed = { link = "DiffDelete" }, -- deleted line in diff

		-- 'lsp-highlight'
		LspReferenceText = { bg = c.bg2 },
		LspReferenceRead = { bg = c.bg2 },
		LspReferenceWrite = { bg = c.bg2 },

		LspInlayHint = { fg = c.dgray, bg = c.grayblue },

		LspCodeLens = { fg = c.dgray },
		LspCodeLensSeparator = { fg = c.dgray },
		LspSignatureActiveParameter = { fg = c.dblue, bg = c.grayblue },

		-- 'diagnostic-highlights'
		DiagnosticError = { link = "Error" },
		DiagnosticWarn = { link = "WarningMsg" },
		DiagnosticInfo = { fg = c.dblue, bg = c.lblue },
		DiagnosticHint = { fg = c.fg, bg = c.grayblue },
		DiagnosticOk = { fg = c.dgreen, bg = c.grayblue },

		DiagnosticUnderlineError = { sp = c.red, undercurl = true },
		DiagnosticUnderlineWarn = { sp = c.orange, undercurl = true },
		DiagnosticUnderlineInfo = { sp = c.dblue, undercurl = true },
		DiagnosticUnderlineHint = { sp = c.dgray, undercurl = true },
		DiagnosticUnderlineOk = { sp = c.dgreen, undercurl = true },

		DiagnosticDeprecated = { strikethrough = true },
		DiagnosticUnnecessary = { fg = c.dgray },

		-- 'treesitter-highlights'
		["@variable"] = { link = "Identifier" }, -- various variable names
		["@variable.builtin"] = { link = "@variable" }, -- built-ins (`this` etc)
		["@variable.parameter"] = { fg = c.dblue, bg = c.grayblue }, -- parameters of functions
		["@variable.member"] = { fg = c.fg }, -- object and sstruct fields

		["@constant"] = { link = "Constant" }, -- constant identifiers
		["@constant.builtin"] = { link = "@constant" }, -- built-in constant values
		["@constant.macro"] = { link = "@constant" }, -- constants defined by the preprocessor

		["@module"] = { link = "Function" }, -- modules or namespaces
		["@module.builtin"] = { link = "@module" }, -- built-in modules or namespaces
		["@label"] = { link = "Label" }, -- `GOTO` or other labels

		["@string"] = { link = "String" }, -- string literals
		["@string.documentation"] = { link = "Comment" }, -- string documenting code
		["@string.regexp"] = { fg = c.dblue }, -- regular expressions
		["@string.escape"] = { fg = c.dblue }, -- escape sequences
		["@string.special"] = { link = "Special" }, -- other special strings
		["@string.special.symbol"] = { link = "@string.special" }, -- symbols or atoms
		["@string.special.path"] = { link = "@string.special" }, -- filenames
		["@string.special.url"] = { link = "Underlined" }, -- urls

		["@character"] = { link = "Character" }, -- character literals
		["@character.special"] = { link = "Special" }, -- special characters (wildcards etc)

		["@boolean"] = { link = "Boolean" }, -- boolean literals
		["@number"] = { link = "Number" }, -- numeric literals
		["@number.float"] = { link = "Float" }, -- floating-point literals

		["@type"] = { link = "Type" }, -- type or class definitions and annotations
		["@type.builtin"] = { link = "@type" }, -- built-in types
		["@type.definition"] = { link = "@type" }, -- identifiers in type definitions

		["@attribute"] = { bold = true }, -- attribute annotations (decorators etc)
		["@property"] = { fg = c.fg2 }, -- the key in key/value pairs

		["@function"] = { link = "Function" }, -- function definitions
		["@function.builtin"] = { link = "@function" }, -- built-in functions
		["@function.call"] = { link = "@function" }, -- function calls
		["@function.macro"] = { link = "@function" }, -- preprocessor macros
		["@function.method"] = { link = "@function" }, -- method definitions
		["@function.method.call"] = { link = "@function.method" }, -- method calls

		["@constructor"] = { link = "Special" }, -- constructor calls and definitions
		["@operator"] = { link = "Operator" }, -- symbolic operators (e.g. `+` / `*`)

		["@keyword"] = { link = "Statement" }, -- keywords not fitting into specific categories
		["@keyword.coroutine"] = { link = "@keyword" }, -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
		["@keyword.function"] = { link = "@keyword" }, -- keywords that define a function (e.g. `func` in Go, `def` in Python)
		["@keyword.operator"] = { link = "@keyword" }, -- operators that are English words (e.g. `and` / `or`)
		["@keyword.import"] = { link = "@keyword" }, -- keywords for including modules (e.g. `import` / `from` in Python)
		["@keyword.modifier"] = { link = "@keyword" }, -- modifiers that affect storage in memory or life-time
		["@keyword.repeat"] = { link = "@keyword" }, -- keywords related to loops (e.g. `for` / `while`)
		["@keyword.return"] = { link = "@keyword" }, -- keywords like `return` and `yield`
		["@keyword.debug"] = { link = "@keyword" }, -- keywords related to debugging
		["@keyword.exception"] = { link = "@keyword" }, -- keywords related to exceptions (e.g. `throw` / `catch`)
		["@keyword.conditional"] = { link = "@keyword" }, -- keywords related to conditionals (e.g. `if` / `else`)
		["@keyword.conditional.ternary"] = { link = "@keyword.conditional" }, -- ternary operator (e.g. `?` / `:`)
		["@keyword.directive"] = { link = "@keyword" }, -- various preprocessor directives and shebangs
		["@keyword.directive.define"] = { link = "@keyword.directive" }, -- preprocessor definition directives

		["@punctuation"] = { fg = c.fg2 },
		["@punctuation.delimiter"] = { link = "@punctuation" }, -- delimiters (e.g. `;` / `.` / `,`)
		["@punctuation.bracket"] = { link = "@punctuation" }, -- brackets (e.g. `()` / `{}` / `[]`)
		["@punctuation.special"] = { link = "@punctuation" }, -- special symbols (e.g. `{}` in string interpolation)

		["@comment"] = { link = "Comment" }, -- line and block comments
		["@comment.documentation"] = { fg = c.fg, bg = c.bg2 }, -- comments documenting code
		["@comment.error"] = { link = "Error" }, -- error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED`)
		["@comment.warning"] = { link = "WarningMsg" }, -- warning-type comments (e.g. `WARNING`, `FIX`, `HACK`)
		["@comment.todo"] = { link = "Todo" }, -- todo-type comments (e.g. `TODO`, `WIP`, `FIXME`)
		["@comment.note"] = { link = "DiagnosticInfo" }, -- note-type comments (e.g. `NOTE`, `INFO`, `XXX`)

		["@markup.strong"] = { link = "Bold" }, -- bold text
		["@markup.italic"] = { link = "Italic" }, -- italic text
		["@markup.strikethrough"] = { link = "Strikethrough" }, -- struck-through text
		["@markup.underline"] = { link = "Underlined" }, -- underlined text (only for literal underline markup!)
		["@markup.heading"] = { link = "Title" }, -- headings, titles (including markers)
		["@markup.quote"] = { fg = c.fg2, bg = c.grayblue }, -- block quotes
		["@markup.math"] = { fg = c.dblue, bold = true }, -- math environments (e.g. `$ ... $` in LaTeX)
		["@markup.environment"] = { link = "Special" }, -- environments (e.g. in LaTeX)
		["@markup.link"] = { fg = c.dblue, underline = true }, -- text references, footnotes, citations, etc.
		["@markup.link.label"] = { link = "@markup.lunk" }, -- link, reference descriptions
		["@markup.link.url"] = { fg = c.dblue, underline = true, bold = true }, -- url-stype links
		["@markup.raw"] = { fg = c.fg, bg = c.bg2 }, -- literal or verbatim text (e.g. inline code)
		["@markup.raw.block"] = { link = "@markup.raw" }, -- literal or verbatim text as a stand-alone block
		["@markup.list"] = { fg = c.fg2, bold = true }, -- list markers
		["@markup.list.checked"] = { link = "@markup.list" }, -- checked todo-style list markers
		["@markup.list.unchecked"] = { link = "@markup.list" }, -- unchecked todo-style list markers

		["@diff.plus"] = { link = "DiffAdd" }, -- added text (for diff files)
		["@diff.minus"] = { link = "DiffDelete" }, -- deleted text (for diff files)
		["@diff.delta"] = { link = "DiffChange" }, -- changed text (for diff files)

		["@tag"] = { link = "@variable" }, -- XML-style tag names (e.g. in XML, HTML, etc.)
		["@tag.attribute"] = { link = "@attribute" }, -- XML-style tag attributes
		["@tag.delimiter"] = { link = "@operator" }, -- XML-style tag delimiters
		-- TODO: 'lsp-semantic-highlight'

		-- lewis6991/gitsigns.nvim
		GitSignsAdd = { fg = c.lgreen, bg = c.bg },
		GitSignsChange = { fg = c.lblue, bg = c.bg },
		GitSignsDelete = { fg = c.lred, bg = c.bg },

		-- rcarriga/nvim-notify
		NotifyERRORBorder = { fg = c.dred },
		NotifyWARNBorder = { fg = c.dorange },
		NotifyINFOBorder = { fg = c.dblue },
		NotifyDEBUGBorder = { fg = c.dgray },
		NotifyTRACEBorder = { fg = c.dpurple },

		NotifyERRORIcon = { fg = c.red },
		NotifyWARNIcon = { fg = c.orange },
		NotifyINFOIcon = { fg = c.cyan },
		NotifyDEBUGIcon = { fg = c.dgray },
		NotifyTRACEIcon = { fg = c.purple },

		NotifyERRORTitle = { link = "NotifyERRORIcon" },
		NotifyWARNTitle = { link = "NotifyWARNIcon" },
		NotifyINFOTitle = { link = "NotifyINFOIcon" },
		NotifyDEBUGTitle = { link = "NotifyDEBUGIcon" },
		NotifyTRACETitle = { link = "NotifyTRACEIcon" },

		-- nvim-lualine/lualine.nvim
		LuaLineDiffAdd = { fg = c.green },
		LuaLineDiffChange = { fg = c.blue },
		LuaLineDiffDelete = { fg = c.red },

		-- NeogitOrg/neogit
		NeogitBranch = { fg = c.purple },
		NeogitBranchHead = { link = "NeogitBranch" },
		NeogitRemote = { fg = c.purple },
		NeogitObjectId = { link = "Comment" },
		NeogitStash = { link = "Normal" },
		NeogitFold = { link = "Folded" },

		NeogitSectionHeader = { link = "Title" },
		NeogitUnmergedInto = { link = "NeogitSectionHeader" },

		NeogitChangeModified = { fg = c.dblue, bold = true },
		NeogitChangeAdded = { fg = c.green, bold = true },
		NeogitChangeDeleted = { fg = c.red, bold = true },
		NeogitChangeRenamed = { link = "NeogitChangeModified" },
		NeogitChangeUpdated = { link = "NeofitChangeModified" },
		NeogitChangeCopied = { link = "NeogitChangeModified" },
		NeogitChangeBothModified = { link = "NeogitChangeModified" },
		NeogitChangeNewFile = { link = "NeogitChangeAdded" },

		NeogitHunkHeader = { fg = c.fg, bg = c.lgray },
		NeogitDiffContext = { fg = c.fg, bg = c.bg },
		NeogitDiffAdd = { link = "DiffAdd" },
		NeogitDiffDelete = { link = "DiffDelete" },
		NeogitDiffHeader = { link = "Title" },

		NeogitHunkHeaderHighlight = { fg = c.fg, bg = c.dgray },
		NeogitDiffContextHighlight = { fg = c.fg, bg = c.bg2 },
		NeogitDiffAddHighlight = { link = "DiffAdd" },
		NeogitDiffDeleteHighlight = { link = "DiffDelete" },
		NeogitDiffHeaderHighlight = { link = "Title" },

		-- nvim-telescope/telescope.nvim
		TelescopeSelection = { link = "Visual" },
		TelescopeSelectionCaret = { link = "TelescopeSelection" },
		TelescopeMultiSelection = { link = "Type" },
		TelescopeMultiSelectionCaret = { link = "TelescopeMultiSelection" },

		TelescopeNormal = { link = "NormalFloat" },
		TelescopePreviewNormal = { link = "Normal" },
		TelescopePromptNormal = { bg = c.gray },
		TelescopeResultsNormal = { link = "TelescopeNormal" },

		TelescopeBorder = { link = "FloatBorder" },
		TelescopePreviewBorder = { bg = c.gray },
		TelescopePromptBorder = { link = "TelescopePromptNormal" },
		TelescopeResultsBorder = { link = "telescopeBorder" },

		TelescopeTitle = { link = "FloatTitle" },
		TelescopePreviewTitle = { fg = c.fg, bg = c.lgray },
		TelescopePromptTitle = { fg = c.bg, bg = c.fg, bold = true },
		TelescopeResultsTitle = { link = "TelescopeTitle" },

		TelescopeMatching = { fg = c.dblue, bold = true },

		TelescopePromptPrefix = { fg = c.fg2, bold = true },

		FidgetTitle = { link = "Title" },
		FidgetTask = { fg = c.dgray },
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

	c.generate()
	set_colors()
end

return M
