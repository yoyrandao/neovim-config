local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

local keymap = vim.keymap.set

keymap('n', '<leader>ha', mark.add_file, { desc = '[H]arpoon [A]dd file' })
keymap('n', '<C-e>', ui.toggle_quick_menu)
