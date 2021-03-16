" NvimTree
"
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

let g:nvim_tree_auto_open = 1

set termguicolors

" Telescope
"
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Fugitive
"
nnoremap <leader>gs :G<cr>
nnoremap <leader>gc :Git commit<cr>
nnoremap <leader>gp :Git push<cr>
