local status_ok, nvim_tree = pcall(require, 'nvim-tree')
if not status_ok then
	print('cannot load "nvim_tree" plugin')
	return
end

nvim_tree.setup({
	sort_by = 'case_sensitive',
	view = {
		adaptive_size = true,
	},
})

vim.keymap.set('n', '<leader>E', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
