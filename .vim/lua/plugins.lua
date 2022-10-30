local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use 'gruvbox-community/gruvbox'

	use 'vimwiki/vimwiki'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'

    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/diagnostic-nvim'

    use 'rust-lang/rust.vim'

    use {
        'testaustime/testaustime.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require'pluginconf.testaustime_conf'
        end
    }

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
