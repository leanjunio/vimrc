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
	Plug 'stsewd/fzf-checkout.vim'
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/nvim-compe'
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
	set completeopt=menuone,noselect	
	source $HOME/.config/nvim/plugin/nvim-tree.vimrc
	source $HOME/.config/nvim/plugin/coc.vimrc

	" No highlight on double <CR>
	nnoremap <CR> :noh<CR><CR>

	nnoremap <leader>gs :G<CR>
	nnoremap <leader>gp :Git push<CR>
	nnoremap <leader>gc :Git commit<CR>
	nnoremap <leader>gg :GFiles<CR>
	nnoremap <leader>ag :Ag<CR>
	nnoremap <leader>rg :Rg<CR>

	nnoremap <leader>gC :GCheckout<CR>

	lua require'lspconfig'.tsserver.setup{}

	" completion
	let g:compe = {}
	let g:compe.enabled = v:true
	let g:compe.autocomplete = v:true
	let g:compe.debug = v:false
	let g:compe.min_length = 1
	let g:compe.preselect = 'enable'
	let g:compe.throttle_time = 80
	let g:compe.source_timeout = 200
	let g:compe.resolve_timeout = 800
	let g:compe.incomplete_delay = 400
	let g:compe.max_abbr_width = 100
	let g:compe.max_kind_width = 100
	let g:compe.max_menu_width = 100
	let g:compe.documentation = v:true

	let g:compe.source = {}
	let g:compe.source.path = v:true
	let g:compe.source.buffer = v:true
	let g:compe.source.calc = v:true
	let g:compe.source.nvim_lsp = v:true
	let g:compe.source.nvim_lua = v:true
	let g:compe.source.vsnip = v:true
	let g:compe.source.ultisnips = v:true

	inoremap <silent><expr> <C-Space> compe#complete()
	inoremap <silent><expr> <CR>      compe#confirm('<CR>')
	inoremap <silent><expr> <C-e>     compe#close('<C-e>')
	inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
	inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
endif
