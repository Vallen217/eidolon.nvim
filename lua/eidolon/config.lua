---@alias Variant "midnight" | "twighlight" | "dusk" | "dawn"
local M = {}

---@class options
M.options = {
	---@type "auto" | Variant
	variant = "auto",

	---@type Variant
	dark_variant = "midnight",

	---@type table<string, table<string, string>>
	palette = {},
}

---@param options Options | nil
function M.extend_options(options)
	M.options = vim.tbl_deep_extend("force", M.options, options or {})
end

return M
