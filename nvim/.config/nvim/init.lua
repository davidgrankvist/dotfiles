if vim.fn.has("win32") == 1 then
    vim.cmd("language en")
end

if vim.fn.has("wsl") == 1 then
    require("wslClipboard")
end

require("common")
require("dotfileCommands")
require("pluginManager.lazy")
require("searchTelescope")
require("autocompletion")
require("lsp")
require("theme")
