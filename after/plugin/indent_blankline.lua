local status_ok, indent_blankline = pcall(require, 'indent_blankline')
if not status_ok then
	return
end

vim.opt.list = true
vim.opt.listchars:append "space:⋅"

vim.g.indent_blankline_buftype_exclude = {'terminal', 'nofile', 'quickfix', 'prompt', 'help', '', ' '}

indent_blankline.setup {
	char = '┊',
	show_trailing_blankline_indent = false,
	space_char_blankline = ' ',
	show_current_context = true,
	show_current_context_start = true,
}
