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
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-fugitive'
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-telescope/telescope-fzy-native.nvim'
	Plug 'codota/tabnine-vim'
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/nvim-compe'
	Plug 'nvim-lua/completion-nvim'
	call plug#end()

	lua require('plugins')
	lua require('lsps')

	lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}

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
	" source $HOME/.config/nvim/plugin/coc.vimrc
	source $HOME/.config/nvim/plugin/telescope.vim
	source $HOME/.config/nvim/plugin/nvim-compe.vim
	source $HOME/.config/nvim/plugin/lsp.vim

	" No highlight on double <CR>
	nnoremap <CR> :noh<CR><CR>
	" Use <Tab> and <S-Tab> to navigate through popup menu
	inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

	" Set completeopt to have a better completion experience
	set completeopt=menuone,noinsert,noselect

	" Avoid showing message extra message when using completion
	set shortmess+=c
endif
