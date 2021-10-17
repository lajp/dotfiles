return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	use 'gruvbox-community/gruvbox'

	use 'vimwiki/vimwiki'

	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/completion-nvim'
	use 'nvim-lua/diagnostic-nvim'

	use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'

	use 'vimsence/vimsence'
end)
