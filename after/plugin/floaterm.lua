vim.g.floaterm_width = 0.95
vim.g.floaterm_height = 0.95

local keymap = vim.keymap.set

keymap('n', '<leader>lg', ':FloatermNew lazygit<CR>', { desc = '[L]azy[G]it' })
keymap('n', '<leader>tt', ':FloatermToggle<CR>', { desc = '[T]oggle [T]erminal' })
keymap('n', '<leader>tk', ':FloatermKill<CR>', { desc = '[T]erminal [K]ill' })
keymap('t', '<leader>tt', '<C-\\><C-N>:FloatermToggle<CR>', { desc = '[T]oggle [T]erminal' })
keymap('t', '<leader>tk', '<C-\\><C-N>:FloatermKill<CR>', { desc = '[T]erminal [K]ill' })
