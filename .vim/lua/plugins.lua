local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	use 'gruvbox-community/gruvbox'

	use 'vimwiki/vimwiki'

	use { 'ms-jpq/coq_nvim', branch = 'coq', run = ':COQdeps'}
	use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }

	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/diagnostic-nvim'

	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'

	use 'vimsence/vimsence'

    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
    }

	if packer_bootstrap then
		require('packer').sync()
	end
end)
