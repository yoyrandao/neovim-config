local keymap = vim.keymap.set

local status_ok_telescope, telescope = pcall(require, 'telescope')
if not status_ok_telescope then
	return
end

local status_ok_builtin, builtin = pcall(require, 'telescope.builtin')
if not status_ok_builtin then
	return
end

local actions = require "telescope.actions"

telescope.setup {
	defaults = {
		prompt_prefix = "> ",
		selection_caret = "< ",
		path_display = { 'smart' },
		file_ignore_patterns = { 'node_modules/.*' },

		mappings = {
			i = {
				['<C-n>'] = actions.cycle_history_next,
				['<C-p>'] = actions.cycle_history_prev,

				['<C-j>'] = actions.move_selection_next,
				['<C-k>'] = actions.move_selection_previous,

				['<C-c>'] = actions.close,

				['<Down>'] = actions.move_selection_next,
				['<Up>'] = actions.move_selection_previous,

				['<CR>'] = actions.select_default,
			},
			n = {
				['<ESC>'] = actions.close,

				['<CR>'] = actions.select_default,

				['j'] = actions.move_selection_next,
				['k'] = actions.move_selection_previous,

				['<Down>'] = actions.move_selection_next,
				['<Up>'] = actions.move_selection_previous,

				['?'] = actions.which_key,
			}
		},
		pickers = {},
		extensions = {},
	}
}

telescope.load_extension('fzf')

keymap('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
keymap('n', '<C-p>', builtin.git_files, { desc = 'List git files' })
keymap('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input('grep > ') });
end, { desc = 'Grep [S]tring' })
