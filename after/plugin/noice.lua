local status_ok_notify, notify = pcall(require, 'notify')
if not status_ok_notify then
	print('cannot load "notify" plugin')
	return
end

local status_ok_noice, noice = pcall(require, 'noice')
if not status_ok_noice then
	print('cannot load "noice" plugin')
	return
end

notify.setup({
	background_colour = '#000000'
})

noice.setup({
	lsp = {
		signature = {
			enabled = false,
		},
	},
})

