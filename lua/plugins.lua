local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

local packer = require'packer'
local use = packer.use

return packer.startup(function()
  use 'wbthomason/packer.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = 'TSUpdate',
    config = function() require 'plugins.treesitter' end
  }
  use {
    'airblade/vim-rooter',
    config = function()
      vim.g.rooter_patterns = { '.git/', '.vim/' }
    end
  }

  -- LSP Configurations for the builtin LSP Client
  use {
    'neovim/nvim-lspconfig',
    config = function() require 'plugins.nvim-lspconfig' end
  }

  -- LSP Completion
  use {
    'hrsh7th/nvim-compe',
    config = function() require 'plugins.nvim-compe' end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}, { 'nvim-telescope/telescope-fzy-native.nvim' }},
    config = function() require 'plugins.telescope' end

  }
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function() require 'plugins.lualine' end
  }	
  use 'tpope/vim-fugitive'
  use 'nvim-lua/lsp-status.nvim'
  use 'danilo-augusto/vim-afterglow'
  use {
    "folke/trouble.nvim",
    config = function() require 'plugins.trouble' end
  }
  use {
    'kyazdani42/nvim-tree.lua',
    config = function() require 'plugins.nvim-tree' end
  }
end)
