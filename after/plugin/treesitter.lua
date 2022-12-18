require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'help',
    'go',
    'gomod',
    'javascript',
    'typescript',
    'yaml',
    'lua',
    'vim',
    'json',
    'python',
    'markdown',
    'css',
    'html',
    'make',
    'toml',
  },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

	rainbow = {
		enable = true,
	},
}
