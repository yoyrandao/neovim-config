vim.g.floaterm_width = 0.95
vim.g.floaterm_height = 0.95

local keymap = vim.keymap.set

keymap('n', '<leader>lg', ':FloatermNew lazygit<CR>')
keymap('n', '<leader>tt', ':FloatermToggle<CR>')
keymap('n', '<leader>tk', ':FloatermKill<CR>')
keymap('t', '<leader>tt', '<C-\\><C-N>:FloatermToggle<CR>')
keymap('t', '<leader>tk', '<C-\\><C-N>:FloatermKill<CR>')
