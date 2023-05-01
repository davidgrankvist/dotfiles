require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
  additional_vim_regex_highlighting = false,
}

vim.g.gruvbox_baby_function_style = "NONE"
vim.g.gruvbox_baby_comment_style = "NONE"
vim.g.gruvbox_baby_keyword_style = "NONE"
vim.cmd('colorscheme gruvbox-baby')
