---@alias Variant "midnight" | "twilight" | "dusk"
local M = {}

---@class options
M.options = {
	---@type "auto" | Variant
	variant = "auto",

	---@type Variant
	default = "midnight",

	---@type table<string, table<string, string>>
	palette = {},
}

---@param options Options | nil
function M.extend_options(options)
	M.options = vim.tbl_deep_extend("force", M.options, options or {})
end

return M
