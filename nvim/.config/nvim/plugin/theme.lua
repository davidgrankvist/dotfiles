require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
  additional_vim_regex_highlighting = false,
}

vim.cmd('set termguicolors')
vim.cmd('colorscheme najs')
