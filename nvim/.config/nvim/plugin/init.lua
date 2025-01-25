if vim.fn.has('win32') == 0 then
    require('autocompletion')
    require('lsp')
    require('null-ls')
    require('theme')
end

if vim.fn.has('wsl') == 1 then
    require('wsl')
end
