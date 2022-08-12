local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  use 'lewis6991/gitsigns.nvim'
  -- use 'feline-nvim/feline.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'RRethy/nvim-base16'
  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.0',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "williamboman/mason.nvim" }
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
