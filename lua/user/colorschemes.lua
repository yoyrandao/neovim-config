-- list of all themes:
--   aurora
--   codemonkey
--   darkplus
--   ferrum
--   lunar
--   onedark
--   onedarker
--   onedarkest
--   onenord
--   spacedark
--   system76
--   tomorrow
--   darkplus

-- autocommand that reloads neovim whenever you save the colorschemes.lua file
vim.cmd [[
  augroup colorscheme_autoreload 
	autocmd!
	autocmd BufWritePost colorschemes.lua source <afile>
  augroup end
]]

-- colorscheme variable (change me)
local colorscheme = "onedark"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
