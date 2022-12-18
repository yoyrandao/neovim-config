local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then
	print('bufferline cannot be loaded.')
	return
end

bufferline.setup {
	options = {
		diagnostics = 'nvim_lsp'
	}
}
