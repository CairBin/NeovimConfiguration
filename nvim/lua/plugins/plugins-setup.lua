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
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim' -- TokyonNight theme
  use 'nvim-treesitter/nvim-treesitter' -- Code highlight
  use "p00f/nvim-ts-rainbow"  -- Brackets color (you must install treesitter firstly)
  use {
    'nvim-lualine/lualine.nvim',  -- Status bar
    requires = {'kyazdani42/nvim-web-devicons', opt=true} -- Icons
  }
  use {
    'nvim-tree/nvim-tree.lua', -- File tree
    requires = {'nvim-tree/nvim-web-devicons',} -- File tree icons
  }
  use{    -- LSP
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }
  -- Automatic imperfection
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip" -- snippets engine
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path" -- File path imperfection
  
  use "numToStr/Comment.nvim"
  use "windwp/nvim-autopairs"
  use "akinsho/bufferline.nvim" -- Buffer line 
  use "lewis6991/gitsigns.nvim" -- Git tips
  use{
    'nvim-telescope/telescope.nvim',tag='0.1.1',
    requires = {{'nvim-lua/plenary.nvim'}}
  }
  if packer_bootstrap then
    require('packer').sync()
  end
end)
