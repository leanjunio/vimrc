set runtimepath^=~/.vim runtimepath+=~/.vim/ater
let &packpath = &runtimepath

let mapleader = ","
let maplocalleader = ","

let g:custom_path = '~/.config/nvim/'

func LoadConfig(name)
    exec 'source' g:custom_path . a:name . '.vim'
endfunc

exec 'luafile' expand(g:custom_path . 'lua/plugins.lua')

autocmd BufWritePost plugins.lua PackerCompile

" call LoadConfig('base')
" call LoadConfig('keymap')

colorscheme afterglow
set termguicolors
set shiftwidth=2
set nu
set rnu
syntax on
set nohlsearch
set nowrap

" Remaps for switching buffers
nnoremap <leader>h <C-w>h<CR>
nnoremap <leader>l <C-w>l<CR>
nnoremap <leader>j <C-w>j<CR>
nnoremap <leader>k <C-w>k<CR>
