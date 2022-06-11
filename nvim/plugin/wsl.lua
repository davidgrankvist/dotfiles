-- clipboard compatibility
if vim.fn.has('wsl') == 1 then
    -- This makes sure win32yank.exe is used instead of e.g. Wayland/X11 clipboard tools
    --
    -- see:
    --   - :help clipboard-tool for clipboard tool priority order
    --   - nvim FAQ about accessing the clipboard from WSL https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl
    vim.g.clipboard = {
        name = 'win32yank.exe',
        copy = {
           ['+'] = { 'win32yank.exe', '-i', '--crlf' },
           ['*'] = {'win32yank.exe', '-i', '--crlf' },
        },
        paste = {
           ['+'] = {'win32yank.exe', '-o', '--lf' },
           ['*'] = {'win32yank.exe', '-o', '--lf' },
        },
        cache_enabled  = 1,
    }
end
