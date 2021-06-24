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

set nocompatible

"colorscheme arcolors
set termguicolors


