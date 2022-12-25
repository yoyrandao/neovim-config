vim.g.mapleader = ' '

local keymap = vim.keymap.set

keymap('n', '<C-Up>', ':resize -2<CR>')
keymap('n', '<C-Down>', ':resize +2<CR>')
keymap('n', '<C-Left>', ':vertical resize -2<CR>')
keymap('n', '<C-Right>', ':vertical resize +2<CR>')

keymap('n', 'j', 'jzz', { silent = true })
keymap('n', 'k', 'kzz', { silent = true })

keymap('n', '}', '}zz', { silent = true })
keymap('n', '{', '{zz', { silent = true })

keymap('n', '<leader>e', ':Ex<CR>')

keymap('n', '<C-h>', '<C-w>h')
keymap('n', '<C-l>', '<C-w>l')
keymap('n', '<C-k>', '<C-w>k')
keymap('n', '<C-j>', '<C-w>j')

keymap('n', '<ESC>', ':noh<CR>', { silent = true })
keymap('n', '<C-Up>', ':resize -2<CR>')
keymap('n', '<C-Down>', ':resize +2<CR>')
keymap('n', '<C-Left>', ':vertical resize -2<CR>')
keymap('n', '<C-Right>', ':vertical resize +2<CR>')

keymap('n', '<S-l>', ':bnext<CR>')
keymap('n', '<S-h>', ':bprevious<CR>')

keymap('n', 'J', 'mzJ`z')

keymap('n', '<C-d>', '<C-d>zz')
keymap('n', '<C-u>', '<C-u>zz')

keymap('n', 'n', 'nzzzv')
keymap('n', 'N', 'Nzzzv')

keymap('n', 'Q', '<nop>')
keymap('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


keymap('i', '<A-j>', '<Esc>:m .+1<CR>==gi')
keymap('i', '<A-k>', '<Esc>:m .-2<CR>==gi')


keymap('v', '<', '<gv')
keymap('v', '>', '>gv')
keymap('v', 'p', '\'_dP')

keymap('v', '<A-j>', ':m \'>+1<CR>gv=gv')
keymap('v', '<A-k>', ':m \'<-2<CR>gv=gv')


keymap('t', '<C-h>', '<C-\\><C-N><C-w>h')
keymap('t', '<C-j>', '<C-\\><C-N><C-w>j')
keymap('t', '<C-k>', '<C-\\><C-N><C-w>k')
keymap('t', '<C-l>', '<C-\\><C-N><C-w>l')
keymap('t', '<ESC>', '<C-\\><C-N>')
keymap('t', '<C-l>', '<nop>')


keymap('n', '<leader>y', '\"+y')
keymap('v', '<leader>y', '\"+y')
keymap('n', '<leader>Y', '\"+Y')
