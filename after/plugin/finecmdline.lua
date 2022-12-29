local status_ok, cmdline = pcall(require, 'fine-cmdline')
if not status_ok then
	return
end

vim.keymap.set('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })

cmdline.setup({
	cmdline = {
		enable_keymaps = true,
		smart_history = true,
		prompt = ': ',
	},
	popup = {
		position = {
			row = '45%',
			col = '50%',
		},
		size = {
			width = '50%',
		},
		border = {
			style = 'double'
		},
		win_options = {
			winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
		},
	},
})
