let mapleader=","
let maplocalleader=","

set relativenumber
	set shiftwidth=2
	set softtabstop=2 
	set tabstop=2

if exists('g:vscode')
	" VSCode extension
else
	call plug#begin('~/.vim/plugged')
		Plug 'mhinz/vim-startify'
		Plug 'chriskempson/base16-vim'
		Plug 'kyazdani42/nvim-web-devicons' " for file icons
		Plug 'kyazdani42/nvim-tree.lua'
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'nvim-lua/popup.nvim'
		Plug 'nvim-lua/plenary.nvim'
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		Plug 'tpope/vim-fugitive'
		Plug 'nvim-lua/popup.nvim'
		Plug 'nvim-lua/plenary.nvim'
		Plug 'nvim-telescope/telescope.nvim'
		Plug 'nvim-telescope/telescope-fzy-native.nvim'
	call plug#end()

	lua require('plugins')


	" Find files using Telescope command-line sugar.
	nnoremap <leader>gg <cmd>Telescope git_files<cr>
	nnoremap <leader>ff <cmd>Telescope find_files<cr>
	nnoremap <leader>fg <cmd>Telescope live_grep<cr>
	nnoremap <leader>fb <cmd>Telescope buffers<cr>
	nnoremap <leader>fh <cmd>Telescope help_tags<cr>

	colorscheme base16-ashes

	set termguicolors
	set nu

	source $HOME/.config/nvim/plugin/nvim-tree.vimrc
	source $HOME/.config/nvim/plugin/coc.vimrc
	source $HOME/.config/nvim/plugin/telescope.vim

	" No highlight on double <CR>
	nnoremap <CR> :noh<CR><CR>
endif
