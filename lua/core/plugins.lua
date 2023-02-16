
--//Plugins\\--

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

	--Theme
	use 'sainnhe/everforest'
	use 'shaunsingh/nord.nvim'
	use "lunarvim/darkplus.nvim"

	--tyoe
	use "tpope/vim-surround"
	use 'windwp/nvim-autopairs'

	--Navegation
	use {'nvim-tree/nvim-tree.lua',requires = {'nvim-tree/nvim-web-devicons',},tag = 'nightly'}
	use {	'nvim-telescope/telescope.nvim', tag = '0.1.1',requires = { {'nvim-lua/plenary.nvim'} }}	
	

	--Term	
	use 'akinsho/toggleterm.nvim'

	--Decoration
	use 'nvim-treesitter/nvim-treesitter'
	use {'nvim-lualine/lualine.nvim',requires = { 'kyazdani42/nvim-web-devicons', opt = true }}

	--LSP
	use {"williamboman/mason.nvim","williamboman/mason-lspconfig.nvim","neovim/nvim-lspconfig",}
	use {"SmiteshP/nvim-navic",requires = "neovim/nvim-lspconfig"}


	--Completation
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'rafamadriz/friendly-snippets'


  if packer_bootstrap then
    require('packer').sync()
  end
end)
