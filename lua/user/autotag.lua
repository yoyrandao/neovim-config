vim.g.closetag_filenames = "*.html,*.xml,*.jsx,*.tsx"
vim.g.closetag_xhtml_filenames = "*.xhtml,*.jsx,*.tsx"
vim.g.closetag_filetypes = "html,xhtml,phtml"

vim.g.closetag_emptyTags_caseSensitive = 1
vim.g.closetags_regions = {
	{
		["typescript"] = "jsxRegion,tsxRegion",
	},
	{
		["javascript.jsx"] = "jsxRegion",
	},
	{
		["typescriptreact"] = "jsxRegion,tsxRegion",
	},
	{
		["javascriptreact"] = "jsxRegion",
	},
}

vim.g.closetag_shortcut = ">"
vim.g.closetag_close_shortcut = "<leader>>"
