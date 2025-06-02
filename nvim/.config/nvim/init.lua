if vim.fn.has("win32") and not vim.fn.has("wsl") then
    vim.cmd("language en")
    require("common")
    require("dotfileCommands")
    require("searchBuiltin")
    require("theme")
else
    require("common")
    require("config.lazy")
    require("dotfileCommands")
    require("searchTelescope")
    require("autocompletion")
    require("lsp")
    require("theme")
end

if vim.fn.has("wsl") then
    require("wslClipboard")
end
