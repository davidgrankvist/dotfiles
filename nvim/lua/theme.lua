require('github-theme').setup({
    theme_style = "dark",
    -- no italics
    comment_style = "NONE",
    keyword_style = "NONE",
    function_style = "NONE",
    variable_style = "NONE",
    -- increased contrast for e.g. lsp hover
    colors = {
        bg_float = "#000000",
    }
})
