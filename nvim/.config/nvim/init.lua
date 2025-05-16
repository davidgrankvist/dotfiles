if vim.fn.has("win32") then
    vim.cmd("language en")
    require("common")
    require("dotfileCommands")
    require("searchBuiltin")
    require("theme")
else
    require("common")
    vim.cmd("runtime vimScript/plugins.vim")
    vim.cmd("runtime vimScript/searchFzf.vim")
    require("dotfileCommands")
    require("autocompletion")
    require("lsp")
    require("theme")
end

if vim.fn.has("wsl") then
    require("wslClipboard")
end
