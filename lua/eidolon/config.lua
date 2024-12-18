---@alias Variant "night" | "dusk"
local M = {}

---@class options
M.options = {
	variant = "night",

	---@type table<string, table<string, string>>
	palette = {},
}

---@param options Options | nil
function M.extend_options(options)
	M.options = vim.tbl_deep_extend("force", M.options, options or {})
end

return M
