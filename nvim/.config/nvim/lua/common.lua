local global = vim.opt

global.expandtab = true
global.shiftwidth = 4
global.number = true
global.relativenumber = true
global.ignorecase = true
global.smartcase = true
global.completeopt = { "menuone", "noinsert", "noselect" }
global.shortmess:append("c")
global.smartindent = true
global.nrformats:append("alpha")
global.guicursor = "a:Cursor"
global.cursorline = true
global.fillchars = "stlnc:-"
global.exrc = true

vim.g.mapleader = ","
vim.g.loaded_matchparen = 0

vim.g.netrw_banner = 0
vim.g.netrw_altv = 1 -- split ltr
vim.g.netrw_bufsettings = "noma nomod nu nowrap ro nobl" -- line numbers
vim.g.netrw_list_hide = "^\\./$,^\\.\\./$" -- hide . and ..
vim.g.netrw_hide = 1

local keymap = vim.keymap
local mapOpts = { silent = true, noremap = true }

-- esc mode
keymap.set("i", "jk", "<esc>", mapOpts)
keymap.set("c", "jk", "<esc>", mapOpts)
keymap.set("t", "jk", "<c-\\><c-n>")
-- command
keymap.set("n", "<space>", ":")
keymap.set("x", "<space>", ":")
-- write/quit
keymap.set("n", "<leader>w", ":w<cr>", mapOpts)
keymap.set("n", "<leader>q", ":q<cr>", mapOpts)
keymap.set("n", "<leader><leader>w", ":x<cr>", mapOpts)
keymap.set("n", "<leader><leader>q", ":qa<cr>", mapOpts)
-- highlight off
keymap.set("n", "<leader><space>", ":noh<cr>", mapOpts)
-- explore
keymap.set("n", "<leader>e", ":Ex<cr>", mapOpts)
-- tabs
keymap.set("n", "<leader>t", ":tabnew<cr>", mapOpts)
keymap.set("n", "<leader>T", ":tabclose<cr>", mapOpts)
-- splits
keymap.set("n", "<c-s>", "<c-w><c-w>", mapOpts)
keymap.set("n", "<leader>s", "<c-w>s<c-w>j", mapOpts)
keymap.set("n", "<leader>v", "<c-w>v<c-w>l", mapOpts)
-- brackets
keymap.set("i", "{<enter>", "{<enter>}<esc>O<bs><tab>", mapOpts)
-- hjkl only
keymap.set("n", "<up>", "<nop>", mapOpts)
keymap.set("n", "<down>", "<nop>", mapOpts)
keymap.set("n", "<left>", "<nop>", mapOpts)
keymap.set("n", "<right>", "<nop>", mapOpts)
keymap.set("i", "<up>", "<nop>", mapOpts)
keymap.set("i", "<down>", "<nop>", mapOpts)
keymap.set("i", "<left>", "<nop>", mapOpts)
keymap.set("i", "<right>", "<nop>", mapOpts)
keymap.set("x", "<up>", "<nop>", mapOpts)
keymap.set("x", "<down>", "<nop>", mapOpts)
keymap.set("x", "<left>", "<nop>", mapOpts)
keymap.set("x", "<right>", "<nop>", mapOpts)
-- delete without loosing current yank
keymap.set("n", "<leader>d", "\"_d", mapOpts)
-- replace selection with current yank
keymap.set("x", "<leader>p", "\"_dP", mapOpts)
-- clipboard yank/paste
keymap.set("n", "<leader>y", "\"*y", mapOpts)
keymap.set("v", "<leader>y", "\"*y", mapOpts)
keymap.set("n", "<leader>p", "\"*p", mapOpts)
-- cycle lists and buffers
keymap.set("n", "<c-j>", ":cnext<cr>zz", mapOpts)
keymap.set("n", "<c-k>", ":cprev<cr>zz", mapOpts)
keymap.set("n", "<leader>l", ":lnext<cr>zz", mapOpts)
keymap.set("n", "<leader>h", ":lprev<cr>zz", mapOpts)
keymap.set("n", "<S-Right>", ":bnext<cr>", mapOpts)
keymap.set("n", "<S-Left>", ":bprev<cr>", mapOpts)
keymap.set("n", "<c-b>", ":make<cr>")
