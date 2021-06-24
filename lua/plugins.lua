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

end)
