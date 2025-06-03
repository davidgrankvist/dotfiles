if vim.fn.has("win32") == 1 then
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

if vim.fn.has("wsl") == 1 then
    require("wslClipboard")
end
