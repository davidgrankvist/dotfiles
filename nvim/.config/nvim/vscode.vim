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
nmap <silent>  <leader>e <cmd>call VSCodeNotify('workbench.view.explorer')<cr>
" tabs
nmap <silent> <leader>t :tabnew<cr>
nmap <silent> <leader>T :tabclose<cr>
" splits
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
" file search
nmap <silent> <leader>f <cmd>call VSCodeNotify('workbench.action.quickOpen')<cr>
nmap <silent> <leader><leader>f <cmd>call VSCodeNotify('workbench.action.findInFiles')<cr>
" close others
nmap <silent> <c-w>o <cmd>call VSCodeNotify('workbench.action.closeOtherEditors')<cr>
" LSP
nmap <silent> <c-h> <cmd>call VSCodeNotify('editor.action.marker.prev')<cr>
nmap <silent> <c-l> <cmd>call VSCodeNotify('editor.action.marker.next')<cr>
nmap <silent> gr <cmd>call VSCodeNotify('editor.action.goToReferences')<cr>
nmap <silent> <leader>ca <cmd>call VSCodeNotify('editor.action.quickFix')<cr>
nmap <silent> <leader>rn <cmd>call VSCodeNotify('editor.action.rename')<cr>
