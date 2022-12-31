local status_ok, trouble = pcall(require, 'trouble')
if not status_ok then
	print('cannot load "trouble" package')
	return
end

trouble.setup()

local keymap = vim.keymap.set

keymap('n', '<leader>td', ':TroubleToggle document_diagnostics<CR>', { noremap = true, silent = true, desc = '[T]oggle [D]iagnostics' })
keymap('n', '<leader>twd', ':TroubleToggle workspace_diagnostics<CR>', { noremap = true, silent = true, desc = '[T]oggle [W]orkspace [D]iagnostics'})
keymap('n', '<leader>tq', ':TroubleToggle quickfix<CR>', { noremap = true, silent = true, desc = '[T]oggle [Q]ickfix' })
