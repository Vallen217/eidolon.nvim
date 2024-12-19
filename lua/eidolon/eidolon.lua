local M = {}
local config = require("eidolon.config")

local function set_highlights()
	local colors = require("eidolon.colors")

	local highlights = {}

	-- Editor
	M.default_highlights = {
		Normal = { bg = colors.bg1, fg = colors.fg }, -- Normal text
		Comment = { bg = colors.bg1, fg = colors.grey2 }, -- Any comment
		ColorColumn = { link = "Normal" }, -- Columns set with 'colorcolumn'
		Conceal = { bg = colors.bg1, fg = colors.grey1 }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { bg = colors.fg, fg = colors.bg1 }, -- Character under the cursor
		CurSearch = { bg = colors.green2, fg = colors.bg1 }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
		lCursor = { bg = colors.fg, fg = colors.bg1 }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { bg = colors.fg, fg = colors.bg1 }, -- Like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = colors.bg1 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine = { bg = colors.bg1 }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory = { bg = colors.bg1, fg = colors.blue2 }, -- Directory names (and other special names in listings)
		DiffAdd = { link = "Normal", underline = true, sp = colors.green1 }, -- Diff mode: Added line |diff.txt|
		DiffChange = { link = "Normal", underline = true, sp = colors.blue1 }, -- Diff mode: Changed line |diff.txt|
		DiffDelete = { link = "Normal", underline = true, sp = colors.red2 }, -- Diff mode: Deleted line |diff.txt|
		DiffText = { link = "Normal", underline = true, sp = colors.fg }, -- Diff mode: Changed text within a changed line |diff.txt|
		EndOfBuffer = { bg = colors.bg1, fg = colors.bg1 }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		TermCursor = { bg = colors.fg, fg = colors.bg1 }, -- Cursor in a focused terminal
		TermCursorNC = { link = "Normal" }, -- Cursor in an unfocused terminal
		ErrorMsg = { bg = colors.bg1, fg = colors.red1 }, -- Error messages on the command line
		VertSplit = { bg = colors.bg1, fg = colors.bg1 }, -- Column separating vertically split windows
		Folded = { bg = colors.bg5, fg = colors.grey1 }, -- Line used for closed folds
		FoldColumn = { link = "Comment" }, -- 'foldcolumn'
		SignColumn = { link = "Comment" }, -- Column where |signs| are displayed
		IncSearch = { bg = colors.green1, fg = colors.bg1 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		Substitute = { bg = colors.red2, fg = colors.bg1 }, -- |:substitute| replacement text highlighting
		LineNr = { link = "Comment" }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove = { link = "Comment" }, -- Line number for when the 'relativenumber' option is set, above the cursor line
		LineNrBelow = { link = "Comment" }, -- Line number for when the 'relativenumber' option is set, below the cursor line
		CursorLineNr = { bg = colors.bg1, fg = colors.ice1 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		CursorLineFold = { link = "Comment" }, -- Like FoldColumn when 'cursorline' is set for the cursor line
		CursorLineSign = { link = "Comment" }, -- Like SignColumn when 'cursorline' is set for the cursor line
		MatchParen = { bg = colors.bg1, fg = colors.ice2 }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg = { bg = colors.bg1, fg = colors.ice2 }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea = { link = "Normal" }, -- Area for messages and cmdline
		MsgSeparator = { link = "Normal" }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { bg = colors.bg1, fg = colors.lilac1 }, -- |more-prompt|
		NonText = { bg = colors.bg1, fg = colors.grey1 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		NormalFloat = { link = "Normal" },
		FloatBorder = { link = "Comment" }, -- Border of floating windows.
		FloatTitle = { bg = colors.bg1, fg = colors.blue2 }, -- Title of floating windows.
		NormalNC = { link = "Normal" }, -- normal text in non-current windows
		Pmenu = { link = "Normal" }, -- Popup menu: Normal item.
		PmenuSel = { link = "Normal" }, -- Popup menu: Selected item.
		PmenuKind = { link = "Normal" }, -- Popup menu: Normal item "kind"
		PmenuKindSel = { link = "Normal" }, -- Popup menu: Selected item "kind"
		PmenuExtra = { link = "Normal" }, -- Popup menu: Normal item "extra text"
		PmenuExtraSel = { link = "Normal" }, -- Popup menu: Selected item "extra text"
		PmenuSbar = { link = "Normal" }, -- Popup menu: Scrollbar.
		PmenuThumb = { link = "Normal" }, -- Popup menu: Thumb of the scrollbar.
		Question = { bg = colors.bg1, fg = colors.lilac1 }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = colors.bg5, fg = colors.fg }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { link = "Normal" }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		SpecialKey = { bg = colors.bg1, fg = colors.grey1 }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad = { link = "Normal", undercurl = true, sp = colors.red2 }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { link = "Normal", undercurl = true, sp = colors.green1 }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { link = "Normal", undercurl = true, sp = colors.blue1 }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { link = "Normal", undercurl = true, sp = colors.purple1 }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		StatusLine = { link = "Normal" }, -- Status line of current window
		StatusLineNC = { link = "Comment" }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = colors.bg1, fg = colors.fg }, -- Tab pages line, not active tab page label
		TabLineFill = { link = "Normal" }, -- Tab pages line, where there are no labels
		TabLineSel = { bg = colors.bg5, fg = colors.fg }, -- Tab pages line, active tab page label
		Title = { bg = colors.bg1, fg = colors.blue2 }, -- Titles for output from ":set all", ":autocmd" etc.
		Visual = { bg = colors.visual_sel_bg }, -- Visual mode selection
		VisualNOS = { link = "Visual" }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { bg = colors.bg1, fg = colors.ice1 }, -- Warning messages
		Whitespace = { bg = colors.bg1, fg = colors.bg5 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		Winseparator = { bg = colors.bg1, fg = colors.grey3 }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		WildMenu = { link = "Normal" }, -- Current match in 'wildmenu' completion
		WinBar = { link = "Comment" }, -- Window bar of current window
		WinBarNC = { link = "Comment" }, -- Window bar of not-current windows

		-- General syntax (:h group-name)
		Constant = { fg = colors.purple1 }, -- (*) Any constant
		Boolean = { fg = colors.orange1 }, --   A boolean constant: TRUE, false
		String = { fg = colors.green1 }, --   A string constant: "this is a string"
		Character = { link = "String" }, --   A character constant: 'c', '\n'
		Number = { fg = colors.yellow2 }, --   A number constant: 234, 0xff
		Float = { link = "Number" }, --   A floating point constant: 2.3e10

		Identifier = { fg = colors.green2 }, -- (*) Any variable name
		Function = { fg = colors.blue1 }, --   Function name (also: methods for classes)

		Statement = { fg = colors.purple1 }, -- (*) Any statement
		Conditional = { fg = colors.lilac1 }, --   if, then, else, endif, switch, etc.
		Repeat = { link = "Conditional" }, --   for, do, while, etc.
		Label = { link = "Conditional" }, --   case, default, etc.
		Operator = { fg = colors.lilac2 }, --   "sizeof", "+", "*", etc.
		Keyword = { fg = colors.lilac1 }, --   any other keyword
		Exception = { fg = colors.pink1 }, --   try, catch, throw

		Macro = { fg = colors.pink1 }, --   Same as Define
		Include = { link = "Macro" }, --   Preprocessor #include
		Define = { link = "Macro" }, --   Preprocessor #define
		PreCondit = { link = "Macro" }, --   Preprocessor #if, #else, #endif, etc.
		PreProc = { link = "Macro" }, -- (*) Generic Preprocessor

		Type = { fg = colors.ice1 }, -- (*) int, long, char, etc.
		StorageClass = { link = "Type" }, --   static, register, volatile, etc.
		Structure = { link = "Type" }, --   struct, union, enum, etc.
		Typedef = { link = "Type" }, --   A typedef

		Special = { fg = colors.blue1 }, -- (*) Any special symbol
		SpecialChar = { link = "Special" }, --   Special character in a constant
		Tag = { link = "Special" }, --   You can use CTRL-] on this
		Delimiter = { link = "Special" }, --   Character that needs attention
		SpecialComment = { link = "Special" }, --   Special things inside a comment (e.g. '\n')
		Debug = { link = "Special" }, --   Debugging statements

		Underlined = { underline = true, sp = colors.fg }, -- Text that stands out, HTML links
		Ignore = { link = "Normal" }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		Error = { fg = colors.red2 }, -- Any erroneous construct
		Todo = { bg = colors.blue1, fg = colors.bg1 }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- lsp (:h lsp-highlight)
		LspReferenceText = { link = "Normal" }, -- Used for highlighting "text" references
		LspReferenceRead = { link = "Normal" }, -- Used for highlighting "read" references
		LspReferenceWrite = { link = "Normal" }, -- Used for highlighting "write" references
		LspInlayHint = { bg = colors.bg4, fg = colors.grey1 }, -- Used for highlighting inlay hints
		LspCodeLens = { link = "Conceal" }, -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
		LspCodeLensSeparator = { link = "Comment" }, -- Used to color the seperator between two or more code lens.
		LspSignatureActiveParameter = { bg = colors.bg1, fg = colors.bg1 }, -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

		-- Diagnostic (:h diagnostic-highlights)
		DiagnosticError = { Error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticWarn = { fg = colors.ice1 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticInfo = { fg = colors.blue1 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticHint = { fg = colors.lilac1 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticOk = { fg = colors.green1 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticVirtualTextError = { bg = colors.virt_err_bg, fg = colors.red2 }, -- Used for "Error" diagnostic virtual text.
		DiagnosticVirtualTextWarn = { bg = colors.virt_warn_bg, fg = colors.ice2 }, -- Used for "Warn" diagnostic virtual text.
		DiagnosticVirtualTextInfo = { bg = colors.virt_info_bg, fg = colors.blue2 }, -- Used for "Info" diagnostic virtual text.
		DiagnosticVirtualTextHint = { bg = colors.virt_hint_bg, fg = colors.lilac2 }, -- Used for "Hint" diagnostic virtual text.
		DiagnosticVirtualTextOk = { bg = colors.virt_ok_bg, fg = colors.green2 }, -- Used for "Ok" diagnostic virtual text.
		DiagnosticUnderlineError = { link = "Normal", undercurl = true, sp = colors.red2 }, -- Used to underline "Error" diagnostics.
		DiagnosticUnderlineWarn = { link = "Normal", undercurl = true, sp = colors.ice1 }, -- Used to underline "Warn" diagnostics.
		DiagnosticUnderlineInfo = { link = "Normal", undercurl = true, sp = colors.blue1 }, -- Used to underline "Info" diagnostics.
		DiagnosticUnderlineHint = { link = "Normal", undercurl = true, sp = colors.green1 }, -- Used to underline "Hint" diagnostics.
		DiagnosticUnderlineOk = { link = "DiagnosticUnderlineHint" }, -- Used to underline "Ok" diagnostics.
		DiagnosticFloatingError = { link = "DiagnosticError" }, -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		DiagnosticFloatingWarn = { link = "DiagnosticWarn" }, -- Used to color "Warn" diagnostic messages in diagnostics float.
		DiagnosticFloatingInfo = { link = "DiagnosticInfo" }, -- Used to color "Info" diagnostic messages in diagnostics float.
		DiagnosticFloatingHint = { link = "DiagnosticHint" }, -- Used to color "Hint" diagnostic messages in diagnostics float.
		DiagnosticFloatingOk = { link = "DiagnosticOk" }, -- Used to color "Ok" diagnostic messages in diagnostics float.
		DiagnosticSignError = { link = "DiagnosticError" }, -- Used for "Error" signs in sign column.
		DiagnosticSignWarn = { link = "DiagnosticWarn" }, -- Used for "Warn" signs in sign column.
		DiagnosticSignInfo = { link = "DiagnosticInfo" }, -- Used for "Info" signs in sign column.
		DiagnosticSignHint = { link = "DiagnosticHint" }, -- Used for "Hint" signs in sign column.
		DiagnosticSignOk = { link = "DiagnosticOk" }, -- Used for "Ok" signs in sign column.

		-- Treesitter (:h treesitter-highlight)
		["@variable"] = { fg = colors.variable_fg }, -- Various variable names
		["@variable.builtin"] = { fg = colors.red2 }, -- Built-in variable names
		["@orange1.parameter"] = { fg = colors.ice2 }, -- Parameters of a function
		["@variable.parameter.builtin"] = { fg = colors.lilac2 }, -- Special parameters (e.g. _, it)
		["@variable.member"] = { fg = colors.blue2 }, -- Object and struct fields
		["@constant"] = { fg = colors.orange1 }, -- Constant identifiers
		["@constant.builtin"] = { fg = colors.orange2 }, -- Built-in constant values
		["@constant.macro"] = { fg = colors.pink1 }, -- Constants defined by the preprocessor
		["@module"] = { fg = colors.ice2 }, -- Modules or namespace
		["@module.builtin"] = { fg = colors.blue1 }, -- Built-in modules or namespace
		["@label"] = { fg = colors.lilac1 }, -- Label
		["@string"] = { fg = colors.green1 }, -- String literals
		["@string.documentation"] = { fg = colors.green1 }, -- String documenting code
		["@string.regex"] = { fg = colors.yellow1 }, -- Regular expressions
		["@slushtring.escape"] = { fg = colors.yellow1 }, -- Escape sequences
		["@string.special"] = { fg = colors.blue2 }, -- Special strings
		["@string.special.symbol"] = { fg = colors.blue2 }, -- Symbols or atoms
		["@string.special.path"] = { fg = colors.blue2 }, -- File paths
		["@string.special.url"] = { fg = colors.orange2 }, -- URLs/hyperlinks
		["@character"] = { fg = colors.green1 }, -- Character literals
		["@character.special"] = { fg = colors.blue2 }, -- Special characters
		["@boolean"] = { fg = colors.orange1 }, -- Boolean literals
		["@number"] = { fg = colors.yellow2 }, -- Number literals
		["@number.float"] = { fg = colors.yellow2 }, -- Float literals
		["@type"] = { fg = colors.ice1 }, -- Type or class definitions
		["@type.builtin"] = { fg = colors.ice1 }, -- Built-in types
		["@type.definition"] = { fg = colors.ice1 }, -- Identifiers of type definitions
		["@attribute"] = { fg = colors.orange2 }, -- Attribute annotations
		["@attribute.builtin"] = { fg = colors.purple1 }, -- Built-in annotations
		["@property"] = { fg = colors.lilac2 }, -- The 'key' in 'key/value' pairs
		["@function"] = { fg = colors.blue1 }, -- Function definitions
		["@function.builtin"] = { fg = colors.lilac1 }, -- Built-in function definitions
		["@function.call"] = { fg = colors.lilac1 }, -- Function calls
		["@function.macro"] = { fg = colors.blue1 }, -- Preprocessor macros
		["@function.method"] = { fg = colors.lilac1 }, -- Method definitions
		["@function.method.call"] = { fg = colors.ice1 }, -- Method calls
		["@constructor"] = { fg = colors.green1 }, -- Constructor calls and definitions
		["@operator"] = { fg = colors.fg }, -- Symbolic operators
		["@keyword"] = { fg = colors.purple1 }, -- Keywords not fitting into specific categories
		["@keyword.coroutine"] = { fg = colors.purple1 }, -- Keywords related to coroutines
		["@keyword.function"] = { fg = colors.purple1 }, -- Keywords that define a function
		["@keyword.operator"] = { fg = colors.lilac2 }, -- operators that are English words
		["@keyword.import"] = { fg = colors.pink1 }, -- Keywords for including modules
		["@keyword.type"] = { fg = colors.ice1 }, -- Keywords defining composite types
		["@keyword.modifier"] = { fg = colors.purple1 }, -- Keywords defining type modifiers
		["@keyword.repeat"] = { fg = colors.lilac1 }, -- Keywords related to loops
		["@keyword.return"] = { fg = colors.pink1 }, -- Keywords like 'return' and 'yield'
		["@keyword.debug"] = { fg = colors.purple2 }, -- Keywords related to debugging
		["@keyword.exception"] = { fg = colors.purple2 }, -- Keywords related to exceptions
		["@keyword.conditional"] = { fg = colors.lilac1 }, -- Keywords related to conditionals
		["@keyword.conditional.ternary"] = { fg = colors.lilac1 }, -- Ternary operators
		["@keyword.directive"] = { fg = colors.purple1 }, -- Various preprocessor directives and shebangs
		["@keyword.directive.define"] = { fg = colors.purple1 }, -- Preprocessor definition directives
		["@punctuation.delimiter"] = { fg = colors.fg }, -- Delimiters
		["@punctuation.bracket"] = { fg = colors.fg }, -- Brackets
		["@punctuation.special"] = { fg = colors.ice1 }, -- Special Symbols
		["@comment"] = { fg = colors.grey2 }, -- Line & block comments
		["@comment.documentation"] = { fg = colors.grey2 }, -- Comments documenting code
		["@comment.error"] = { bg = comment_err_bg, fg = colors.bg1 }, -- Error-type comments
		["@comment.warning"] = { bg = colors.ice1, fg = colors.bg1 }, -- Warning-type comments
		["@comment.todo"] = { bg = colors.blue1, fg = colors.bg1 }, -- Todo-type comments
		["@comment.note"] = { bg = colors.green2, fg = colors.bg1 }, -- Note-type comments
		["@markup.strong"] = { fg = colors.pink1 }, -- Bold text
		["@markup.italic"] = { fg = colors.fg, italic = true }, -- Italic text
		["@markup.strikethrough"] = { fg = colors.fg, strikethrough = true }, -- Struck-through text
		["@markup.underline"] = { fg = colors.fg, underline = true }, -- Underlined text
		["@markup.heading"] = { fg = colors.blue1 }, -- Heading & titles
		["@markup.heading.1"] = { fg = colors.markup_h1 }, -- Top-level heading
		["@markup.heading.2"] = { fg = colors.markup_h2 }, -- Section heading
		["@markup.heading.3"] = { fg = colors.markup_h3 }, -- Subsection heading
		["@markup.heading.4"] = { fg = colors.markup_h4 }, -- And so on
		["@markup.heading.5"] = { fg = colors.markup_h5 }, -- And so forth
		["@markup.heading.6"] = { fg = colors.markup_h6 }, -- Six levels is enough
		["@markup.quote"] = { fg = colors.fg }, -- Block quotes
		["@markup.math"] = { fg = colors.blue2 }, -- Math environments
		["@markup.link"] = { fg = colors.purple2 }, -- Text references footnotes, citations
		["@markup.link.label"] = { fg = colors.lilac1 }, -- Link, reference descriptions
		["@markup.link.url"] = { fg = colors.orange2, underline = true }, -- URL-style links
		["@markup.raw"] = { fg = colors.green2 }, -- Literal or verbatim text
		["@markup.raw.block"] = { fg = colors.pink1 }, -- Literal or verbatim text as a stand-alone block
		["@markup.list"] = { fg = colors.ice1 }, -- List markers
		["@markup.list.checked"] = { fg = colors.green1 }, -- Checked todo-style list markers
		["@markup.list.unchecked"] = { fg = colors.ice2 }, -- Unchecked todo-style list markers
		["@diff.plus"] = { fg = colors.green1 }, -- Added text (for diff files)
		["@diff.minus."] = { fg = colors.red2 }, -- Deleted text (for diff files)
		["@diff.delta"] = { fg = colors.ice1 }, -- Changed text (for diff files)
		["@tag"] = { fg = colors.purple1 }, -- XML-style tag names (e.g. in XML, HTML, etc.)
		["@tag.builtin"] = { fg = colors.blue1 }, -- XML-style tag names (e.g. HTML5 tags)
		["@tag.attribute"] = { fg = colors.lilac2 }, -- XML-style tag attributes
		["@tag.delimiter"] = { fg = colors.ice2 }, -- XML-style tag delimiters

		-- coc (:h coc-highlights)
		CocBold = { link = "Normal", bold = true }, -- For bold text
		CocItalic = { link = "Normal", italic = true }, -- For italic text
		CocUnderline = { link = "Normal", underline = true }, -- For underlined text
		CocStrikThrough = { link = "Normal", strikethrough = true }, -- For struckthrough text
		CocMarkdownCode = { link = "Normal" }, -- For inline code in markdown content
		CocMarkdownHeader = { link = "Normal" }, -- For markdown header in floating windows
		CocMarkdownLink = { fg = colors.purple2 }, -- For markdown link text in floating windows

		CocFadeOut = { fg = colors.grey1 }, -- For faded out text, such as for highlighting unnecessary code
		CocErrorSign = { link = "DiagnosticError" }, -- for error signs
		CocWarningSign = { link = "DiagnosticWarn" }, -- for warning signs
		CocInfoSign = { link = "DiagnosticInfo" }, -- for information signs
		CocHintSign = { fg = colors.grey2 }, -- for hint signs
		CocErrorVirtualText = { link = "DiagnosticVirtualTextError" }, -- for error virtual text
		CocWarningVirtualText = { link = "DiagnosticVirtualTextWarn" }, -- for warning virtual text
		CocInfoVirtualText = { link = "DiagnosticVirtualInfo" }, -- for information virtual text
		CocHintVirtualText = { link = "DiagnosticVirtualHint" }, -- for hint virtual text
		CocErrorHighlight = { link = "DiagnosticUnderlineError" }, -- for error code range
		CocWarningHighlight = { link = "DiagnosticUnderlineWarn" }, -- for warning code range
		CocInfoHighlight = { link = "DiagnosticUnderlineInfo" }, -- for information code range
		CocHintHighlight = { link = "DiagnosticUnderlineHint" }, -- for hint code range
		CocDeprecatedHighlight = { link = "Comment" }, -- for deprecated code range, links t
		CocStrikeThrough = { link = "Comment" }, -- by default
		CocUnusedHighlight = { fg = colors.grey1 }, -- for unnecessary code range, links to |CocFadeOut| by default
		CocErrorLine = { link = "Comment" }, -- line highlight of sign which contains error
		CocWarningLine = { link = "Comment" }, -- line highlight of sign which contains warning
		CocInfoLine = { link = "Comment" }, -- line highlight of sign which information
		CocHintLine = { link = "Comment" }, -- line highlight of sign which contains hint

		CocHighlightText = { bg = colors.bg3, fg = colors.grey1 }, -- default symbol highlight
		CocHighlightRead = { link = "CocHighlightText" }, -- for `Read` kind of document symbol
		CocHighlightWrite = { link = "CocHighlightText" }, -- for `Write` kind of document symbol

		CocFloating = { link = "Normal" }, -- default highlight group of floating windows/popups. Default links to |NormalFloat| on neovim and |Pmenu| on vim
		CocFloatThumb = { link = "Normal" }, -- thumb highlight of scrollbar
		CocFloatSbar = { link = "Normal" }, -- Scrollbar highlight of floating window/popups
		CocFloatDividingLine = { link = "Comment" }, -- for dividing lines, links to |NonText| by default
		CocFloatActive = { link = "Comment" }, -- for activated text, links to |CocSearch| by default
		CocErrorFloat = { link = "DiagnosticError" }, -- for error text in floating windows/popups
		CocHintFloat = { link = "DiagnosticHint" }, -- for hint text in floating windows/popups

		CocInlayHint = { link = "Comment" }, -- for highlight inlay hint virtual text block, default uses foreground from |CocHintSign| and background from |SignColumn
		CocInlayHintParameter = { link = "Comment" }, -- for parameter kind of inlay hint
		CocInlayHintType = { link = "Comment" }, -- for type kind of inlay hint

		CocNotificationProgress = { link = "Comment" }, -- for progress line in progress notification
		CocNotificationButton = { link = "Normal", underline = true }, -- for action buttons in notification window
		CocNotificationError = { link = "DiagnosticError" }, -- for highlight border of error notification
		CocNotificationWarning = { link = "DiagnosticWarn" }, -- for highlight border of warning notification
		CocNotificationInfo = { link = "DiagnosticInfo" }, -- for highlight border of info notification

		CocSearch = { link = "Comment" }, -- for matched characters
		CocListLine = { bg = colors.bg3, fg = colors.grey1 }, -- for current cursor line
		CocListSearch = { link = "Comment" }, -- for matched characters
		CocListMode = { fg = colors.ice1 }, -- for mode text in the statusline
		CocListPath = { link = "Comment" }, -- for cwd text in the statusline
		CocSelectedText = { link = "Comment" }, -- for sign text of selected lines (multiple selection only)
		CocSelectedLine = { link = "Comment" }, -- for line highlight of selected lines (multiple selection only)

		CocTreeTitle = { fg = colors.blue2 }, -- for title in tree view
		CocTreeDescription = { link = "Comment" }, -- for description beside label
		CocTreeOpenClose = { link = "Normal" }, -- for open and close icon in tree view
		CocTreeSelected = { link = "CocListLine" }, -- for highlight lines contains selected node

		CocPumSearch = { link = "Comment" }, -- for matched input characters, linked to |CocSearch| by default
		CocPumDetail = { link = "Comment" }, -- for highlight label details that follows label (including possible detail and description)
		CocPumMenu = { link = "Normal" }, -- for menu of complete item
		CocPumShortcut = { link = "Comment" }, -- for shortcut text of source
		CocPumDeprecated = { link = "Comment" }, -- for deprecated label
		CocPumVirtualText = { link = "Comment" }, -- for virtual text which enabled by |coc-config-suggest-virtualText

		CocSymbolDefault = { fg = colors.lilac1 }, -- linked to |hl-MoreMsg| by default
		CocSymbolText = { link = "CocSymbolDefault" },
		CocSymbolUnit = { link = "CocSymbolDefault" },
		CocSymbolValue = { link = "CocSymbolDefault" },
		CocSymbolKeyword = { fg = colors.purple1 },
		CocSymbolSnippet = { link = "CocSymbolDefault" },
		CocSymbolColor = { fg = colors.yellow2 },
		CocSymbolReference = { fg = colors.yellow2 },
		CocSymbolFolder = { link = "CocSymbolDefault" },
		CocSymbolFile = { fg = colors.purple1 },
		CocSymbolModule = { fg = colors.ice1 },
		CocSymbolNamespace = { fg = colors.ice1 },
		CocSymbolPackage = { fg = colors.purple1 },
		CocSymbolClass = { fg = colors.green1 },
		CocSymbolMethod = { fg = colors.blue2 },
		CocSymbolProperty = { fg = colors.lilac2 },
		CocSymbolField = { fg = colors.blue2 },
		CocSymbolConstructor = { fg = colors.green1 },
		CocSymbolEnum = { fg = colors.ice2 },
		CocSymbolInterface = { fg = colors.ice2 },
		CocSymbolFunction = { fg = colors.blue1 },
		CocSymbolVariable = { fg = colors.red2 },
		CocSymbolConstant = { fg = colors.orange1 },
		CocSymbolString = { fg = colors.green2 },
		CocSymbolNumber = { fg = colors.yellow2 },
		CocSymbolBoolean = { fg = colors.orange2 },
		CocSymbolArray = { link = "CocSymbolDefault" },
		CocSymbolObject = { link = "CocSymbolDefault" },
		CocSymbolKey = { fg = colors.green2 },
		CocSymbolNull = { fg = colors.ice2 },
		CocSymbolEnumMember = { fg = colors.lilac2 },
		CocSymbolStruct = { link = "Normal" },
		CocSymbolEvent = { fg = colors.orange1 },
		CocSymbolOperator = { link = "Normal" },
		CocSymbolTypeParameter = { fg = colors.ice2 },

		-- nvim-notify
		NotifyERRORBorder = { fg = colors.red2 },
		NotifyWARNBorder = { fg = colors.ice2 },
		NotifyINFOBorder = { fg = colors.blue2 },
		NotifyTRACEBorder = { fg = colors.purple2 },
		NotifyDEBUGBorder = { link = "Normal" },
		NotifyERRORTitle = { fg = colors.red1 },
		NotifyWARNTitle = { fg = colors.ice1 },
		NotifyINFOTitle = { fg = colors.blue1 },
		NotifyTRACETitle = { fg = colors.purple1 },
		NotifyDEBUGTitle = { link = "Normal" },
		NotifyERRORIcon = { fg = colors.red1 },
		NotifyWARNIcon = { fg = colors.ice1 },
		NotifyINFOIcon = { fg = colors.blue1 },
		NotifyTRACEIcon = { fg = colors.purple1 },
		NotifyDEBUGIcon = { link = "Normal" },

		-- nvim-cmp (:h cmp-highlight)
		CmpItemAbbr = { fg = colors.fg }, -- Highlight group for unmatched characters of each completion field.
		CmpItemAbbrDeprecated = { fg = colors.fg }, -- Highlight group for unmatched characters of each deprecated completion field.
		CmpItemAbbrMatch = { fg = colors.fg }, -- Highlight group for matched characters of each completion field. Matched characters
		CmpItemAbbrMatchFuzzy = { fg = colors.fg }, -- Highlight group for fuzzy-matched characters of each completion field.
		CmpItemKind = { fg = colors.fg }, -- Highlight group for the kind of the field.
		CmpItemKindMethod = { link = "@function.method" },
		CmpItemKindText = { link = "@variable" },
		CmpItemKindFunction = { link = "@function" },
		CmpItemKindConstructor = { link = "@constructor" },
		CmpItemKindVariable = { link = "@variable" },
		CmpItemKindClass = { link = "@type" },
		CmpItemKindInterface = { link = "@type" },
		CmpItemKindModule = { link = "@module" },
		CmpItemKindProperty = { link = "@property" },
		CmpItemKindOperator = { link = "@operator" },
		CmpItemKindUnit = { link = "@variable.member" },
		CmpItemKindValue = { link = "@variable.member" },
		CmpItemKindField = { fg = colors.blue2 },
		CmpItemKindEnum = { fg = colors.ice2 },
		CmpItemKindKeyword = { link = "@keyword" },
		CmpItemKindFile = { fg = colors.purple1 },
		CmpItemKindFolder = { fg = colors.lilac1 },
		CmpItemKindEnumMember = { link = "@variable.member" },
		CmpItemKindConstant = { link = "@constant" },
		CmpItemKindStruct = { link = "@structure" },
		CmpItemKindTypeParameter = { link = "@variable.parameter" },

		-- gitsigns.nvim (:h gitsigns-highlight-groups)
		GitSignsAdd = { link = "DiffAdd" }, -- Used for the text of 'add' signs.
		GitSignsAddNr = { link = "DiffAdd" }, -- Used for number column (when `config.numhl == true`) of 'add' signs.
		GitSignsAddLn = { link = "DiffAdd" }, -- Used for buffer line (when `config.linehl == true`) of 'add' signs.
		GitSignsChange = { link = "DiffChange" }, -- Used for the text of 'change' signs.
		GitSignsChangeNr = { link = "DiffChange" }, -- Used for number column (when `config.numhl == true`) of 'change' signs.
		GitSignsChangeLn = { link = "DiffChange" }, -- Used for buffer line (when `config.linehl == true`) of 'change' signs.
		GitSignsDelete = { link = "DiffDelete" }, -- Used for the text of 'delete' signs.
		GitSignsDeleteNr = { link = "DiffDelete" }, -- Used for number column (when `config.numhl == true`) of 'delete' signs.
		GitSignsDeleteLn = { link = "DiffDelete" }, -- Used for deleted word diff regions when `config.word_diff == true`.
		GitSignsChangedelete = { fg = colors.purple2 }, -- Used for the text of 'changedelete' signs.
		GitSignsChangedeleteNr = { fg = colors.purple2 }, -- Used for number column (when `config.numhl == true`) of 'changedelete' signs.
		GitSignsChangedeleteLn = { fg = colors.purple2 }, -- Used for buffer line (when `config.linehl == true`) of 'changedelete' signs.
		GitSignsCurrentLineBlame = { link = "Comment", bold = true }, -- Used for current line blame.

		-- indent-blankline (:h indent-blankline)
		IndentBlanklineChar = { fg = colors.grey1 },
		IndentBlanklineContextChar = { fg = colors.grey2 },

		-- which-key.nvim
		WhichKey = { fg = colors.yellow2, bold = true },
		WhichKeyDesc = { fg = colors.lilac2 },
		WhichKeyGroup = { fg = colors.ice2 },
		WhichKeySeperator = { link = "Conceal" },
		WhichKeyBorder = { link = "FloatBorder" },
		WhichKeyTitle = { link = "FloatTitle" },

		-- flash.nvim
		FlashBackdrop = { link = "Comment" },
		FlashMatch = { link = "Search" },
		FlashCurrent = { link = "IncSearch" },
		FlashLabel = { link = "Substitute" },
		FlashPrompt = { link = "MsgArea" },
		FlashPromptIcon = { link = "Special" },
		FlashCursor = { link = "Cursor" },

		-- trouble.nvim
		TroubleCode = { link = "Special" },
		TroubleCount = { link = "TabLineSel" },
		TroubleDirectory = { link = "Directory" },
		TroubleFilename = { link = "Directory" },
		TroubleIconArray = { link = "@punctuation.bracket" },
		TroubleIconBoolean = { link = "@boolean" },
		TroubleIconClass = { link = "@type" },
		TroubleIconConstant = { link = "@constant" },
		TroubleIconConstructor = { link = "@constructor" },
		TroubleIconDirectory = { link = "Special" },
		TroubleIconEnum = { link = "@lsp.type.enum" },
		TroubleIconEnumMember = { link = "@lsp.type.enumMember" },
		TroubleIconEvent = { link = "Special" },
		TroubleIconField = { link = "@variable.member" },
		TroubleIconFile = { link = "Normal" },
		TroubleIconFunction = { link = "@function" },
		TroubleIconInterface = { link = "@lsp.type.interface" },
		TroubleIconKey = { link = "@lsp.type.keyword" },
		TroubleIconMethod = { link = "@function.method" },
		TroubleIconModule = { link = "@module" },
		TroubleIconNamespace = { link = "@module" },
		TroubleIconNull = { link = "@constant.builtin" },
		TroubleIconNumber = { link = "@number" },
		TroubleIconObject = { link = "@constant" },
		TroubleIconOperator = { link = "@operator" },
		TroubleIconPackage = { link = "@module" },
		TroubleIconProperty = { link = "@property" },
		TroubleIconString = { link = "@string" },
		TroubleIconStruct = { link = "@lsp.type.struct" },
		TroubleIconTypeParameter = { link = "@lsp.type.typeParameter" },
		TroubleIconVariable = { link = "@variable" },
		TroubleIndent = { link = "LineNr" },
		TroubleIndentFoldClosed = { link = "CursorLineNr" },
		TroubleNormal = { link = "NormalFloat" },
		TroubleNormalNC = { link = "NormalFloat" },
		TroublePos = { link = "LineNr" },
		TroublePreview = { link = "Visual" },
		TroubleSource = { link = "Comment" },
		TroubleText = { link = "Normal" },

		-- telescope.nvim
		TelescopePromptTitle = { link = "FloatTitle" },
		TelescopePromptBorder = { link = "FloatBorder" },
		TelescopeResultsTitle = { link = "FloatTitle" },
		TelescopeResultsBorder = { link = "FloatBorder" },
		TelescopePreviewTitle = { fg = colors.yellow2 },
		TelescopePreviewBorder = { link = "FloatBorder" },
		TelescopeSelectionCaret = { fg = colors.yellow2 },
		TelescopeSelection = { fg = colors.fg, bg = colors.bg3 },
		TelescopeMatching = { link = "Search" },

		-- nvim-tree
		NvimTreeNormal = { link = "Normal" },
		NvimTreeVertSplit = { fg = colors.bg5, bg = colors.bg1 },
		NvimTreeRootFolder = { fg = colors.fg, bold = true },
		NvimTreeGitDirty = { fg = colors.orange2 },
		NvimTreeGitNew = { fg = colors.green2 },
		NvimTreeImageFile = { fg = colors.pink1 },
		NvimTreeFolderIcon = { fg = colors.lilac1 },

		-- aerial.nvim
		AerialNormal = { fg = colors.grey1 },
		AerialLine = { fg = colors.fg, bg = colors.bg3 },

		-- neogit
		NeogitBranch = { fg = colors.blue2 },
		NeogitRemote = { fg = colors.yellow2 },

		NeogitSectionHeader = { fg = colors.lilac2 },

		NeogitCursorLine = { bg = colors.bg3 },
		NeogitAddCursorLine = { bg = colors.bg3 },
		NeogitDeleteCursorLine = { bg = colors.bg3 },
		NeogitDiffHeaderCursor = { bg = colors.bg3 },
		NeogitHunkHeaderCursor = { bg = colors.bg3 },
		NeogitContextCursor = { bg = colors.bg3 },
		NeogitHunkMergeHeaderCursor = { bg = colors.bg3 },

		NeogitHunkHeader = { bg = colors.bg1 },
		NeogitHunkHeaderHighlight = { fg = colors.red2, underline = true, sp = colors.grey3 },

		NeogitHunkMergeHeader = { link = "DiagnosticVirtualTextWarn" },
		NeogitHunkMergeHeaderHighlight = { fg = colors.fg, underline = true, sp = colors.ice1 },

		NeogitDiffHeader = { link = "DiagnosticVirtualTextInfo" },
		NeogitDiffHeaderHighlight = { fg = colors.fg, underline = true, sp = colors.blue1 },

		NeogitFloatHeader = { link = "FloatTitle" },
		NeogitFloatHeaderHighlight = { fg = colors.fg, underline = true, sp = colors.lilac1 },

		NeogitDiffAdd = { fg = colors.green2 },
		NeogitDiffAdditions = { fg = colors.green1 },
		NeogitDiffAddHighlight = { fg = colors.green2 },
		NeogitChangeAdded = { fg = colors.green1 },

		NeogitDiffDelete = { fg = colors.red2 },
		NeogitDiffDeletions = { fg = colors.red1 },
		NeogitDiffDeleteHighlight = { fg = colors.red2 },
		NeogitChangeDeleted = { fg = colors.red1 },

		-- render-markdown
		RenderMarkdownH1 = { link = "@markup.heading.1" },
		RenderMarkdownH2 = { link = "@markup.heading.2" },
		RenderMarkdownH3 = { link = "@markup.heading.3" },
		RenderMarkdownH4 = { link = "@markup.heading.4" },
		RenderMarkdownH5 = { link = "@markup.heading.5" },
		RenderMarkdownH6 = { link = "@markup.heading.6" },

		RenderMarkdownH1Bg = { link = "@markup.heading.1" },
		RenderMarkdownH2Bg = { link = "@markup.heading.2" },
		RenderMarkdownH3Bg = { link = "@markup.heading.3" },
		RenderMarkdownH4Bg = { link = "@markup.heading.4" },
		RenderMarkdownH5Bg = { link = "@markup.heading.5" },
		RenderMarkdownH6Bg = { link = "@markup.heading.6" },

		RenderMarkdownCode = { link = "ColorColumn" },
		RenderMarkdownCodeInline = { link = "ColorColumn" },
		RenderMarkdownInlineHighlight = { link = "ColorColumn" },
		RenderMarkdownBullet = { fg = colors.orange2 },
		RenderMarkdownQuote = { link = "@markup.quote" },
		RenderMarkdownDash = { link = "LineNr" },
		RenderMarkdownSign = { link = "SignColumn" },
		RenderMarkdownMath = { link = "@markup.math" },
		RenderMarkdownHtmlComment = { link = "@comment" },
		RenderMarkdownLink = { link = "@markup.link" },
		RenderMarkdownWikiLink = { link = "@markup.link.label" },
		RenderMarkdownChecked = { link = "@markup.list.checked" },
		RenderMarkdownUnchecked = { link = "@markup.list.unchecked" },
		RenderMarkdownTodo = { link = "@comment.todo" },
		RenderMarkdownTableHead = { link = "@markup.heading" },
		RenderMarkdownTableRow = { link = "Normal" },
		RenderMarkdownTableFill = { link = "Conceal" },

		RenderMarkdownSuccess = { link = "DiagnosticOk" },
		RenderMarkdownInfo = { link = "DiagnosticInfo" },
		RenderMarkdownHint = { link = "DiagnosticHint" },
		RenderMarkdownWarn = { link = "DiagnosticWarn" },
		RenderMarkdownError = { link = "DiagnosticError" },
	}

	for group, highlight in pairs(M.default_highlights) do
		highlights[group] = highlight
	end

	for group, highlight in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, highlight)
	end
end

---@param variant Variant | nil
function M.colorscheme(variant)
	config.extend_options({ variant = variant })

	vim.opt.termguicolors = true
	if vim.g.colors_name then
		vim.cmd("hi clear")
		vim.cmd("syntax reset")
	end
	vim.g.colors_name = "eidolon"

	set_highlights()
end

---@param options Options
function M.setup(options)
	config.extend_options(options or {})
end

return M
