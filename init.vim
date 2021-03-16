" My custom VIM remaps

let mapleader = ","

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>hs :sp<CR>
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

" No highlight on double <CR>
nnoremap <CR> :noh<CR><CR>

" Load general.vimrc
source $HOME/.config/nvim/config/general.vimrc

" Plugins
"
call plug#begin('~/.nvim/plugged')
  Plug 'kyazdani42/nvim-web-devicons' " for file icons
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'glepnir/spaceline.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'chriskempson/base16-vim'
  Plug 'akinsho/nvim-bufferline.lua'
  Plug 'tpope/vim-fugitive'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'puremourning/vimspector'
call plug#end()

" Install plugins and then map them
"
source $HOME/.config/nvim/config/plugin_maps.vimrc

colorscheme base16-default-dark

" TreeSitter
"
:lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF

" Bufferline
"
:lua << EOF
require'bufferline'.setup {
  options = {
    mappings = true
  }
}
EOF

" Telescope
"
:lua << EOF
require('telescope').load_extension('fzy_native')
EOF

source $HOME/.config/nvim/config/coc.vimrc
