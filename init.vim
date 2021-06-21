let mapleader=","
let maplocalleader=","

set shiftwidth=2
set softtabstop=2 
set tabstop=2
set nowrap

if exists('g:vscode')
	" VSCode extension
	nnoremap <leader>as <Cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>
else
	call plug#begin('~/.vim/plugged')
	Plug 'mhinz/vim-startify'
	Plug 'chriskempson/base16-vim'
	Plug 'kyazdani42/nvim-web-devicons' " for file icons
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-fugitive'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'ctrlpvim/ctrlp.vim'
	call plug#end()

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

	" No highlight on double <CR>
	nnoremap <CR> :noh<CR><CR>

	nnoremap <leader>gg :GFiles<CR>
	nnoremap <leader>ag :Ag<CR>
	nnoremap <leader>rg :Rg<CR>
endif
