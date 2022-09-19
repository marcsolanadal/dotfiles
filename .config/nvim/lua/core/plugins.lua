local fn = vim.fn

-- Automatically installs packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git', 
        'clone', 
        '--depth', 
        '1', 
        'https://github.com/wbthomason/packer.nvim',
        install_path,
    })
    print "Installing packer. Close and reopen Neovim."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads Neovim on plugins.lua change
vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]]

-- Use protected call to avoid errors on first call
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

return packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'nvim-lua/plenary.nvim'
    use 'RRethy/nvim-base16'
    use 'folke/tokyonight.nvim'
    use 'norcalli/nvim-colorizer.lua'
    use 'voldikss/vim-floaterm'

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use {
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim'},
        config = function() require('gitsigns').setup() end
    }

    use {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.0',
        requires = {'nvim-lua/plenary.nvim'},
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function() require('lualine').setup() end
    }

    use 'windwp/nvim-autopairs' -- automatic pair completion

    -- Cmp plugins
    use 'hrsh7th/nvim-cmp' -- completion plugin
    use 'hrsh7th/cmp-buffer' -- buffer completions
    use 'hrsh7th/cmp-path' -- path completions
    use 'hrsh7th/cmp-cmdline' -- command line completions
    use 'saadparwaiz1/cmp_luasnip' -- snippet completions
    use 'hrsh7th/cmp-nvim-lsp' -- lsp completions

    -- For luasnip users.
    use 'L3MON4D3/LuaSnip' -- snippet engine

    -- LSP
    use 'neovim/nvim-lspconfig' -- configurations for Nvim LSP
    use 'williamboman/mason.nvim' -- manage lsp, dap, linters and formatters
    use 'williamboman/mason-lspconfig.nvim' -- makes mason and lspconfig work together

    -- Syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
