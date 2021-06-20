let mapleader=","
let maplocalleader=","

set relativenumber
set shiftwidth=2
set softtabstop=2 
set tabstop=2

if exists('g:vscode')
	" VSCode extension
	nnoremap <leader>as <Cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>
else
	call plug#begin('~/.vim/plugged')
	Plug 'neovim/nvim-lspconfig'
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
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'hrsh7th/nvim-compe'
	Plug 'nvim-lua/completion-nvim'
	Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
	Plug 'akinsho/nvim-bufferline.lua'
	call plug#end()

	" Find files using Telescope command-line sugar.
	nnoremap <leader>gg <cmd>Telescope git_files<cr>
	nnoremap <leader>ff <cmd>Telescope find_files<cr>
	nnoremap <leader>fg <cmd>Telescope live_grep<cr>
	nnoremap <leader>fb <cmd>Telescope buffers<cr>
	nnoremap <leader>fh <cmd>Telescope help_tags<cr>

	colorscheme base16-ashes

	set termguicolors
	set nu
	set hidden
	set noswapfile
	set nobackup
	set undodir=~/.vim/undodir
	set undofile
	set nohlsearch
	set incsearch
	set colorcolumn=80
	set signcolumn=yes

	source $HOME/.config/nvim/plugin/nvim-tree.vimrc
	source $HOME/.config/nvim/plugin/coc.vimrc
	source $HOME/.config/nvim/plugin/telescope.vim
	source $HOME/.config/nvim/plugin/nvim-compe.vim

	" No highlight on double <CR>
	nnoremap <CR> :noh<CR><CR>

	" Bufferline
	lua require('bufferline').setup{}

	lua require'lspconfig'.tsserver.setup{}

endif
