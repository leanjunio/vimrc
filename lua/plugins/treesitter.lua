require'nvim-treesitter.configs'.setup {
  ensure_installed = { "typescript", "javascript", "dockerfile", "html"},
  indent = {
    enable = true,
  },
  highlight = {
    enable = true,
  }
}
