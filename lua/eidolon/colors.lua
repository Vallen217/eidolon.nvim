local options = require("eidolon.config").options
local variants = {
	---@class Midnight Color Palette
	midnight = {
		bg1 = "#12121f",
		bg2 = "#171728",
		bg3 = "#1d1d2f",
		bg4 = "#222236",
		bg5 = "#262640",

		fg = "#d4d7ff",

		grey1 = "#63668c",
		grey2 = "#4f5172",
		grey3 = "#444564",

		green1 = "#74d2b7",
		green2 = "#7ed7c0",

		blue1 = "#82bdf7",
		blue2 = "#85c3f9",

		ice1 = "#97e7f7",
		ice2 = "#a1eaf7",

		purple1 = "#9486e4",
		purple2 = "#9f95e9",

		lilac1 = "#88a4f7",
		lilac2 = "#94aef9",

		yellow1 = "#e5dca4",
		yellow2 = "#ecdfac",

		orange1 = "#e2b88d",
		orange2 = "#e8bf9c",

		red1 = "#bd4277",
		red2 = "#bf4a7f",

		pink1 = "#c45a99",
		pink2 = "#d864aa",

		-- syntax specific colors
		virt_err_bg = "#DE87AD",
		virt_warn_bg = "#86E7F9",
		virt_info_bg = "#75B0F0",
		virt_hint_bg = "#8AA4DB",
		virt_ok_bg = "#8ED7C4",

		variable_fg = "#c0cffc",

		comment_err_bg = "#a3336f",

		visual_sel_bg = "#27273f",

		markup_h1 = "#95c7f9",
		markup_h2 = "#9acafa",
		markup_h3 = "#9fccfa",
		markup_h4 = "#a4cffa",
		markup_h5 = "#a8d1fa",
		markup_h6 = "#acd3fa",
	},

	---@class Twighlight Color Palette
	twighlight = {
		bg1 = "#171727",
		bg2 = "#1b1b2d",
		bg3 = "#222235",
		bg4 = "#26263b",
		bg5 = "#2c2c44",

		fg = "#d1d4ff",

		grey1 = "#686b92",
		grey2 = "#545578",
		grey3 = "#48496a",

		green1 = "#7cd5bb",
		green2 = "#86dac4",

		blue1 = "#8cc2f8",
		blue2 = "#8fc8fa",

		ice1 = "#a0e9f8",
		ice2 = "#abecf8",

		purple1 = "#9b8ee6",
		purple2 = "#a79eeb",

		lilac1 = "#91abf7",
		lilac2 = "#9fb5f9",

		yellow1 = "#e5dca4",
		yellow2 = "#eee2b4",

		orange1 = "#e4bd96",
		orange2 = "#eac5a4",

		red1 = "#bf4a7d",
		red2 = "#c25184",

		pink1 = "#c6629e",
		pink2 = "#da6cae",

		-- syntax specific colors
		virt_err_bg = "#1a0a11",
		virt_warn_bg = "#06282d",
		virt_info_bg = "#07192c",
		virt_hint_bg = "#101523",
		virt_ok_bg = "#0d1c18",

		variable_fg = "#b6c7fc",

		comment_err_bg = "#ab3674",

		visual_sel_bg = "#2b2b46",

		markup_h1 = "#9fccf9",
		markup_h2 = "#a2cffb",
		markup_h3 = "#a8d1fa",
		markup_h4 = "#add4fb",
		markup_h5 = "#b2d6fb",
		markup_h6 = "#b7d9fb",
	},

	---@class Dusk Color Palette
	dusk = {
		bg1 = "#191929",
		bg2 = "#1d1d2f",
		bg3 = "#242438",
		bg4 = "#28283e",
		bg5 = "#2c2c44",

		fg = "#cdd1fe",

		grey1 = "#6c6f93",
		grey2 = "#595a78",
		grey3 = "#4d4e6a",

		green1 = "#83d2bb",
		green2 = "#8ed7c4",

		blue1 = "#93c4f6",
		blue2 = "#97caf7",

		ice1 = "#a7e9f6",
		ice2 = "#b1ecf6",

		purple1 = "#a196e4",
		purple2 = "#ada5e9",

		lilac1 = "#99b0f4",
		lilac2 = "#a6baf7",

		yellow1 = "#e4dcaa",
		yellow2 = "#ede3bb",

		orange1 = "#e2bf9d",
		orange2 = "#e8c7ab",

		red1 = "#bb5480",
		red2 = "#be5b87",

		pink1 = "#c26b9f",
		pink2 = "#d775b0",

		-- syntax specific colors
		virt_err_bg = "#1c0c13",
		virt_warn_bg = "#06282d",
		virt_info_bg = "#091b2f",
		virt_hint_bg = "#131825",
		virt_ok_bg = "#101e1a",

		variable_fg = "#bcccfa",

		comment_err_bg = "#a93d76",

		visual_sel_bg = "#303046",

		markup_h1 = "#a6cff7",
		markup_h2 = "#a9d1f9",
		markup_h3 = "#afd4f8",
		markup_h4 = "#b3d6f9",
		markup_h5 = "#b8d9f9",
		markup_h6 = "#bddbf9",
	},

	---@class Dawn Color Palette
	dawn = {
		bg1 = "#EBEBFF",
		bg2 = "#E6E6FE",
		bg3 = "#E1E1FE",
		bg4 = "#DDDDFE",
		bg5 = "#D8D8FD",

		fg = "#7A7A9F",

		grey1 = "#A8A8D6",
		grey2 = "#A5A5D5",
		grey3 = "#A2A2D2",

		green1 = "#42D1A9",
		green2 = "#4CD6B2",

		blue1 = "#49A3FD",
		blue2 = "#4DACFF",

		ice1 = "#46DDFB",
		ice2 = "#53E0F9",

		purple1 = "#7E6CE4",
		purple2 = "#897CE9",

		lilac1 = "#688DFD",
		lilac2 = "#7698FE",

		yellow1 = "#E2D473",
		yellow2 = "#EAD47B",

		orange1 = "#E5AB71",
		orange2 = "#EAB280",

		red1 = "#A12B5E",
		red2 = "#A92D65",

		pink1 = "#C93B90",
		pink2 = "#DE45A1",

		-- syntax specific colors
		virt_err_bg = "#F4D7E4",
		virt_warn_bg = "#D5F1F6",
		virt_info_bg = "#CFE5FC",
		virt_hint_bg = "#D2DEF9",
		virt_ok_bg = "#D7F4E9",

		variable_fg = "#8AB1FF",

		comment_err_bg = "#841F55",

		visual_sel_bg = "#434A70",

		markup_h1 = "#5DADFE",
		markup_h2 = "#61B0FF",
		markup_h3 = "#66B2FF",
		markup_h4 = "#6BB5FF",
		markup_h5 = "#71B8FE",
		markup_h6 = "#76BAFE",
	},
}

if options.palette ~= nil and next(options.palette) then
	for variant_name, override_palette in pairs(options.palette) do
		if variants[variant_name] then
			variants[variant_name] = vim.tbl_extend("force", variants[variant_name], override_palette or {})
		end
	end
end

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == "light" and variants.dawn or variants[options.dark_variant or "midnight"]
