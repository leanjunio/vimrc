" NvimTree
"
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

let g:nvim_tree_auto_open = 1
let g:nvim_tree_auto_close = 1
let g:nvim_tree_quit_on_open = 1

set termguicolors

" Telescope
"
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fg :lua require('telescope.builtin').live_grep({ prompt_prefix=🔍 })<CR>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>gf <cmd>lua require('telescope.builtin').git_files()<cr>
" Fugitive
"
nnoremap <leader>gs :G<cr>
nnoremap <leader>gc :Git commit<cr>
nnoremap <leader>gp :Git push<cr>
nnoremap <leader>gd :Gdiffsplit<cr>
