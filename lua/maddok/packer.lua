vim.cmd [[packadd packer.nvim]]

vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost packer.lua source <afile> | PackerSync
	augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

return packer.startup(function(use)
	-- Packer can manage itself. DO NOT DELETE!!!
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }

	use 'drewtempelmeyer/palenight.vim'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	use 'theprimeagen/harpoon'
	use 'mbbill/undotree'

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
	}
	use 'j-hui/fidget.nvim'
	use 'folke/neodev.nvim'

	use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

	use 'voldikss/vim-floaterm'
	use 'numToStr/Comment.nvim'
	use 'tpope/vim-surround'
	use 'lewis6991/gitsigns.nvim'

	use 'mhinz/vim-startify'

	use 'p00f/nvim-ts-rainbow'

	use {
		'nvim-treesitter/nvim-treesitter-textobjects',
		after = 'nvim-treesitter',
	}

	use 'nvim-lualine/lualine.nvim'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'tpope/vim-sleuth'

	use {
		'VonHeikemen/fine-cmdline.nvim',
		requires = {
			{ 'MunifTanjim/nui.nvim' }
		}
	}
end)
