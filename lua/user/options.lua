
-- Autocommand that reloads neovim whenever you save the options.lua file
vim.cmd [[
  augroup core_options_autoreload 
	autocmd!
	autocmd BufWritePost options.lua source <afile>
  augroup end
]]

local options = {
    backup = false,
    clipboard = "unnamedplus",
    cmdheight = 2,
    completeopt = { "menuone", "noselect" },
    conceallevel = 0,
    fileencoding = "utf-8",
    hlsearch = true,
    incsearch = true,
    ignorecase = true,
    mouse = "a",
    pumheight = 10,
    showtabline = 2,
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = false,
    termguicolors = true,
    timeoutlen = 1000,
    undofile = true,
    updatetime = 300,
    writebackup = false,
    expandtab = false,
    shiftwidth = 2,
    tabstop = 2,
    softtabstop = 2,
    autoindent = true,
    colorcolumn = "120",
    relativenumber = true,
    number = true,
    cursorline = true,
    signcolumn = "yes",
    wrap = false,
    scrolloff = 8,
    sidescrolloff = 8,
    guifont = "monospace:h17",
    laststatus = 2,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]]
