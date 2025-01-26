if vim.fn.has('win32') == 0 then
    require'nvim-treesitter.configs'.setup {
      highlight = {
        enable = true
      },
      additional_vim_regex_highlighting = false,
    }
end

vim.cmd('set termguicolors')
vim.cmd('colorscheme najs')
