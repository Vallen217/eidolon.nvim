local colors = require("eidolon.colors").night
local theme = {}

theme.normal = {
	a = { fg = colors.bg1, bg = colors.purple1 },
	b = { fg = colors.grey1, bg = colors.bg3 },
	c = { fg = colors.grey1, bg = colors.bg1 },
}

theme.insert = { a = { fg = colors.bg1, bg = colors.blue1 } }
theme.visual = { a = { fg = colors.bg1, bg = colors.ice1 } }
theme.replace = { a = { fg = colors.bg1, bg = colors.red1 } }

theme.inactive = {
	a = { fg = colors.fg, bg = colors.bg1 },
	b = { fg = colors.fg, bg = colors.bg1 },
	c = { fg = colors.bg1, bg = colors.bg1 },
}

return theme
