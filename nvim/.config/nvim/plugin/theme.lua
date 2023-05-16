require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
  additional_vim_regex_highlighting = false,
}

vim.cmd('set termguicolors')
vim.cmd('colorscheme najs')
-- tree-sitter - md titles
vim.cmd('hi @text.title guifg=#d9ff52')
