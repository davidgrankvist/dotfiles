-- options
local set = vim.opt
set.number = true
set.relativenumber = true
set.ignorecase = true
set.smartcase = true
set.completeopt = { 'menuone', 'noinsert', 'noselect' }
set.shortmess:append({ c = true })

-- mappings
-- see other modules for specific mappings
vim.g.mapleader = ','
local set_map = vim.api.nvim_set_keymap
local map_opts = { noremap = true, silent = true }

set_map('i', 'jk', '<esc>', map_opts)
set_map('n', '<leader><space>', ':noh<cr>', map_opts)
set_map('n', '<leader>e', ':Ex<cr>', map_opts)
set_map('n', '<leader>t', ':tabnew<cr>', map_opts)
set_map('n', '<leader>T', ':tabclose<cr>', map_opts)
-- hjkl only
set_map('n', '<up>', '<nop>', map_opts)
set_map('n', '<down>', '<nop>', map_opts)
set_map('n', '<left>', '<nop>', map_opts)
set_map('n', '<right>', '<nop>', map_opts)
set_map('i', '<up>', '<nop>', map_opts)
set_map('i', '<down>', '<nop>', map_opts)
set_map('i', '<left>', '<nop>', map_opts)
set_map('i', '<right>', '<nop>', map_opts)

-- netrw
vim.g.netrw_banner = 0 -- hide top part
vim.g.netrw_altv = 1 -- split ltr
vim.g.netrw_bufsettings = 'noma nomod nu nowrap ro nobl' -- line numbers
vim.g.netrw_list_hide = '^\\./$,^\\.\\./$' -- hide . and ..
vim.g.netrw_hide = 1 -- enable hide

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

