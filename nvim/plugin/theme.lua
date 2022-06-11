local util = require('github-theme.util')
require('github-theme').setup({
    theme_style = 'dark',
    -- no italics
    comment_style = 'NONE',
    keyword_style = 'NONE',
    function_style = 'NONE',
    variable_style = 'NONE',

    overrides = function(c)
        return {
            -- increased contrast for e.g. lsp hover
            NormalFloat = { fg = c.fg, bg = '#141414' },
            -- make horizontal splits easier to see
            StatusLineNC = { fg = util.darken(c.fg, 0.9), bg = util.lighten(c.bg, 0.9) },
        }
    end
})
