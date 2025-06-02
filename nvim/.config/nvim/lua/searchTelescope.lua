require('telescope').setup({
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--hidden',
            '--glob=!.git/',
            '--ignore',
        },
    },
    pickers = {
        find_files = {
            find_command = {
                'rg', '--files', '--ignore', '--hidden', '--glob', '!.git/',
            },
        },
    }
})

local builtin = require('telescope.builtin')
local keymap = vim.keymap
keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
