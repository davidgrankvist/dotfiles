set noloadplugins
lua require('wsl')

set expandtab
set shiftwidth=4
set number
set relativenumber
set ignorecase
set smartcase
set completeopt="menuone,noinsert,noselect"
set shortmess+=c
set smartindent
set nrformats+=alpha

let g:mapleader=','

" esc mode
imap <silent> jk <esc>
cmap <silent> jk <esc>
tmap jk <c-\><c-n>
" command
nmap <space> :
xmap <space> :
" write/quit
nmap <silent> <leader>w :w<cr>
nmap <silent> <leader>q :q<cr>
nmap <silent> <leader><leader>w :x<cr>
nmap <silent> <leader><leader>q :qa<cr>
" highlight off
nmap <silent> <leader><space> :noh<cr>
" explore
nmap <silent> <leader>e :Ex<cr>
" tabs
nmap <silent> <leader>t :tabnew<cr>
nmap <silent> <leader>T :tabclose<cr>
" splits
nmap <silent> <leader>h <c-w>h
nmap <silent> <leader>j <c-w>j
nmap <silent> <leader>k <c-w>k
nmap <silent> <leader>l <c-w>l
nmap <silent> <leader>s <c-w>s<c-w>j
nmap <silent> <leader>v <c-w>v<c-w>l
" hjkl only
nmap <silent> <up> <nop>
nmap <silent> <down> <nop>
nmap <silent> <left> <nop>
nmap <silent> <right> <nop>
imap <silent> <up> <nop>
imap <silent> <down> <nop>
imap <silent> <left> <nop>
imap <silent> <right> <nop>
xmap <silent> <up> <nop>
xmap <silent> <down> <nop>
xmap <silent> <left> <nop>
xmap <silent> <right> <nop>
" fuzzy find (:Ex triggers VSCode Ctrl+P)
nmap <silent> <leader>f :Ex<cr>
