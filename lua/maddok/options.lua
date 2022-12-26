vim.cmd [[
  augroup core_options_autoreload 
	autocmd!
	autocmd BufWritePost options.lua source <afile>
  augroup end
]]

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

vim.opt.backup = false

vim.opt.clipboard = "unnamedplus"

vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.fileencoding = "utf-8"

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.ignorecase = true
vim.opt.mouse = "a"

vim.opt.cmdheight = 2
vim.opt.pumheight = 10
vim.opt.showtabline = 2

vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.swapfile = false

vim.opt.termguicolors = true
vim.opt.timeoutlen = 1000

vim.opt.undofile = true
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'

vim.opt.updatetime = 50

vim.opt.writebackup = false

vim.opt.expandtab = false
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.opt.autoindent = true
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.guifont = "monospace:h17"

vim.opt.laststatus = 2

