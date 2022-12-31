local status_ok, dashboard = pcall(require, 'dashboard')
if not status_ok then
	print('cannot load "dashboard" plugin')
	return
end


dashboard.custom_center = {
	{
		icon = ' ',
		desc = 'Find File                               ',
		shortcut = 'SPC f f'
	},
	{
		icon = ' ',
		desc = 'File Browser                           ',
		shortcut = 'SPC e'
	},
	{
		icon = ' ',
		desc = 'Find word                               ',
		action = 'Telescope live_grep',
		shortcut = 'SPC p s'
	},
}
