local status_ok_lsp, lsp = pcall(require, 'lsp-zero')
if not status_ok_lsp then
	return
end

lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'sumneko_lua',
	'sqlls',
})

local status_ok_cmp, cmp = pcall(require, 'cmp')
if not status_ok_cmp then
	return
end

local keymap = vim.keymap.set

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set_preferences({
	sign_icons = { }
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	keymap('n', 'gd', function() vim.lsp.buf.definition() end, opts)
	keymap('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
	keymap('n', 'gi', function() vim.lsp.buf.implementation() end, opts)
	keymap('n', 'K', function() vim.lsp.buf.hover() end, opts)
	keymap('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
	keymap('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
	keymap('n', '<leader>q', function() vim.diagnostic.setloclist() end, opts)
	keymap('n', '[d', function() vim.diagnostic.goto_next() end, opts)
	keymap('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
	keymap('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
	keymap('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
	keymap('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
	keymap('i', '<C-Space>', function() vim.lsp.buf.signature_help() end, opts)

	keymap('n', '<A-F>', function() vim.lsp.buf.format({ async = true }) end)
end)

vim.diagnostic.config({
	virtual_text = false,
	update_in_insert = true,
	underline = true,
	severity_sort = true,
	float = {
		focusable = false,
		style = 'minimal',
		border = 'rounded',
		source = 'always',
		header = '',
		prefix = ''
	},
})

lsp.setup()
