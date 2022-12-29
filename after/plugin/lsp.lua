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

local status_ok_mason, mason_settings = pcall(require, 'mason.settings')
if not status_ok_mason then
	return
end

mason_settings.set({
	ui = {
		border = 'rounded'
	}
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
	suggest_lsp_servers = true,
	setup_servers_on_start = true,
	set_lsp_keymaps = true,
	configure_diagnostics = true,
	cmp_capabilities = true,
	manage_nvim_cmp = true,
	call_servers = 'local',
	sign_icons = {
		error = '✘',
		warn = '▲',
		hint = '⚑',
		info = ''
	}
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings,
	sources = {
		{ name = 'path' },
		{ name = 'nvim_lsp', keyword_length = 1 },
		{ name = 'buffer', keyword_length = 3 },
	}
})

local function mergeTables(first_table, second_table)
	local new_table = {}
	for k, v in pairs(first_table) do new_table[k] = v end
	for k, v in pairs(second_table) do new_table[k] = v end
	return new_table
end

lsp.on_attach(function(_, bufnr)
	local opts = { buffer = bufnr, remap = false }

	keymap('n', 'gd', function() vim.lsp.buf.definition() end, mergeTables(opts, { desc = '[G]o to [D]efinition' }))
	keymap('n', 'gD', function() vim.lsp.buf.declaration() end, mergeTables(opts, { desc = '[G]o to [D]eclaration' }))
	keymap('n', 'gi', function() vim.lsp.buf.implementation() end, mergeTables(opts, { desc = '[G]o to [I]mplementation' }))
	keymap('n', 'K', function() vim.lsp.buf.hover() end, mergeTables(opts, { desc = 'Hover' }))
	keymap('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end,
		mergeTables(opts, { desc = '[V]iew [W]orkspace [S]ymbol aka Find Symbol' }))
	keymap('n', '<leader>vd', function() vim.diagnostic.open_float() end, mergeTables(opts, { desc = '[V]iew Error Float' }))
	keymap('n', '<leader>q', function() vim.diagnostic.setloclist() end, mergeTables(opts, { desc = 'View file errors' }))
	keymap('n', '[d', function() vim.diagnostic.goto_next() end, mergeTables(opts, { desc = 'Go to next error' }))
	keymap('n', ']d', function() vim.diagnostic.goto_prev() end, mergeTables(opts, { desc = 'Go to previous error' }))
	keymap('n', '<leader>vca', function() vim.lsp.buf.code_action() end,
		mergeTables(opts, { desc = '[V]iew [C]ode [A]ction' }))
	keymap('n', '<leader>vrr', function() vim.lsp.buf.references() end,
		mergeTables(opts, { desc = '[V]iew [R]efe[R]ences' }))
	keymap('n', '<leader>vrn', function() vim.lsp.buf.rename() end, mergeTables(opts, { desc = '[V]iew [R]e[N]ame' }))
	keymap('i', '<C-Space>', function() vim.lsp.buf.signature_help() end, mergeTables(opts, { desc = 'Signature help' }))

	keymap('n', '<A-F>', function() vim.lsp.buf.format({ async = true }) end, { desc = 'Format buffer' })
end)

vim.diagnostic.config({
	virtual_text = false,
	update_in_insert = true,
	underline = true,
	severity_sort = true,
	float = {
		focusable = false,
		style = 'minimal',
		border = 'single',
		source = 'always',
		header = '',
		prefix = ''
	},
})

lsp.nvim_workspace()
lsp.setup()
