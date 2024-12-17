--[[
	The majority of the code here was copied from:
	https://github.com/shaunsingh/nord.nvim/tree/master/doc
]]

local util = {}
local eidolon = require("eidolon.eidolon")

-- Go through the table and highlight the group with the color values
util.highlight = function(group, color)
	local style = color.style and "gui=" .. color.style or "gui=NONE"
	local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
	local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
	local sp = color.sp and "guisp=" .. color.sp or ""

	local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

	vim.cmd(hl)
	if color.link then
		vim.cmd("highlight! link " .. group .. " " .. color.link)
	end
end

-- Change the background for the terminal, packer and qf windows
util.contrast = function()
	vim.cmd([[augroup eidolon]])
	vim.cmd([[  autocmd!]])
	vim.cmd([[  autocmd ColorScheme * lua require("eidolon.util").onColorScheme()]])
	vim.cmd([[  autocmd TermOpen * setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
	vim.cmd([[  autocmd FileType packer setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
	vim.cmd([[  autocmd FileType qf setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
	vim.cmd([[augroup end]])
end

-- Loads the colors from the dictionary Object (colorSet)
function util.load_hl_group(hl_group)
	for group, attribute in pairs(hl_group) do
		vim.api.nvim_set_hl(0, group, attribute)
	end
end

-- Load the theme
function util.load_theme()
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "eidolon"

	local editor = eidolon.load_editor()
	local syntax = eidolon.load_syntax()
	local lsp = eidolon.load_lsp()
	local treesitter = eidolon.load_treesitter()
	local coc = eidolon.load_coc()
	local notify = eidolon.load_notify()
	local cmp = eidolon.load_cmp()
	local gitsigns = eidolon.load_gitsigns()
	local ibl = eidolon.load_ibl()
	local which_key = eidolon.load_which_key()
	local flash = eidolon.load_flash()
	local trouble = eidolon.load_trouble()
	local telescope = eidolon.load_telescope()
	local nvim_tree = eidolon.load_nvim_tree()
	local aerial = eidolon.load_aerial()
	local neogit = eidolon.load_neogit()
	local render_md = eidolon.load_render_md()

	util.load_hl_group(editor)
	util.load_hl_group(syntax)
	util.load_hl_group(lsp)
	util.load_hl_group(treesitter)
	util.load_hl_group(coc)
	util.load_hl_group(notify)
	util.load_hl_group(cmp)
	util.load_hl_group(gitsigns)
	util.load_hl_group(ibl)
	util.load_hl_group(which_key)
	util.load_hl_group(flash)
	util.load_hl_group(trouble)
	util.load_hl_group(telescope)
	util.load_hl_group(nvim_tree)
	util.load_hl_group(aerial)
	util.load_hl_group(neogit)
	util.load_hl_group(render_md)
end

return util
