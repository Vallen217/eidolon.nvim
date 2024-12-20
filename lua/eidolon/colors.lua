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
		virt_err_bg = "#12070C",
		virt_warn_bg = "#041F24",
		virt_info_bg = "#061423",
		virt_hint_bg = "#0D111C",
		virt_ok_bg = "#0A1512",

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

	---@class Twilight Color Palette
	twilight = {
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

return variants[options.default or "midnight"]
