local status_ok, comment = pcall(require, 'Comment')
if not status_ok then
	print('comment plugin cannot be loaded.')
	return
end

comment.setup({
	padding = true,
	sticky = true,
	toggler = {
		line = 'gcc',
		block = 'gbc',
	}
})
