require'nvim-treesitter.configs'.setup {
  ensure_installed = { "typescript", "javascript"},
  indent = {
    enable = true,
  },
  highlight = {
    enable = true,
  }
}
