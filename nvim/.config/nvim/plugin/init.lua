if vim.fn.has('win32') == 1 then
    require('theme')
else
    require('autocompletion')
    require('lsp')
    require('theme')
end

if vim.fn.has('wsl') == 1 then
    require('wsl')
end
