local opts = { noremap = true, silent = true }
local opts_term = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- Normal

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-j>", "<C-w>j", opts)

keymap("n", "<ESC>", ":noh<CR>", opts)

keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert
keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Visual 
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("v", "p", '"_dP', opts)

keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Visual Block
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", opts_term)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", opts_term)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", opts_term)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", opts_term)
keymap("t", "<ESC>", "<C-\\><C-N>", opts_term)

-- Telescope
keymap("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>", opts)
keymap("n", "<C-t>", "<cmd>Telescope live_grep<CR>", opts)

-- nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- floaterm
keymap("n", "<leader>lg", ":FloatermNew lazygit<CR>", opts)
keymap("n", "<leader>tt", ":FloatermToggle<CR>", opts)
keymap("n", "<leader>tk", ":FloatermKill<CR>", opts)
keymap("t", "<leader>tt", "<C-\\><C-N>:FloatermToggle<CR>", opts_term)
keymap("t", "<leader>tk", "<C-\\><C-N>:FloatermKill<CR>", opts_term)

-- formatting
keymap("n", "<A-F>", ":Format<CR>", opts)
keymap("i", "<A-F>", "<Esc>:Format<CR>==gi", opts)

-- startify
keymap("n", "<leader>st", ":Startify<CR>", opts)
