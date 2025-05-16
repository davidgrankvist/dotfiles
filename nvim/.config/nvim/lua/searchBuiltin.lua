local global = vim.opt

global.path:append({ ".", "", "**", "**/*" })
global.wildignore:append({ "*/.git/*", "*/bin/*" })

-- show additional hidden files if we're in the dotfiles repo
local path = vim.fn.expand("%:p:h")
if path:find("dotfiles") then
    global.path:append("*/.*/**")
end

local keymap = vim.keymap
keymap.set("n", "<leader>f", ":find<space>")
keymap.set("n", "<leader><leader>f", ":vimgrep<space>/")
