runtime plugins.vim

set expandtab
set shiftwidth=4
set number
set relativenumber
set ignorecase
set smartcase
set completeopt="menuone,noinsert,noselect"
set shortmess+=c

let g:mapleader=','

" esc key
inoremap <silent> jk <esc>
cnoremap <silent> jk <esc>
" command
nnoremap <space> :
" write/quit
nnoremap <silent> <leader>w :w<cr>
nnoremap <silent> <leader>q :q<cr>
nnoremap <silent> <leader><leader>w :x<cr>
nnoremap <silent> <leader><leader>q :qa<cr>
" highlight off
nnoremap <silent> <leader><space> :noh<cr>
" explore
nnoremap <silent> <leader>e :Ex<cr>
" tabs
nnoremap <silent> <leader>t :tabnew<cr>
nnoremap <silent> <leader>T :tabclose<cr>
" splits
nnoremap <silent> <leader>h <c-w>h
nnoremap <silent> <leader>j <c-w>j
nnoremap <silent> <leader>k <c-w>k
nnoremap <silent> <leader>l <c-w>l
nnoremap <silent> <leader>c <c-w>c
nnoremap <silent> <leader>s <c-w>s<c-w>j
nnoremap <silent> <leader>v <c-w>v<c-w>l
" hjkl only
nnoremap <silent> <up> <nop>
nnoremap <silent> <down> <nop>
nnoremap <silent> <left> <nop>
nnoremap <silent> <right> <nop>
inoremap <silent> <up> <nop>
inoremap <silent> <down> <nop>
inoremap <silent> <left> <nop>
inoremap <silent> <right> <nop>
xnoremap <silent> <up> <nop>
xnoremap <silent> <down> <nop>
xnoremap <silent> <left> <nop>
xnoremap <silent> <right> <nop>
" clipboard
nnoremap <silent> <leader>y "*y
nnoremap <silent> <leader>p "*p
nnoremap <silent> <leader>P "*P
" fzf - see plugin/search.vim for :RG
nnoremap <silent> <leader>f :GFiles<cr>
nnoremap <silent> <leader><leader>f :RG<cr>
nnoremap <silent> <leader>F :Files<cr>

let g:netrw_banner=0
let g:netrw_altv=1 " split ltr
let g:netrw_bufsettings="noma nomod nu nowrap ro nobl" " line numbers
let g:netrw_list_hide="^\\./$,^\\.\\./$" " hide . and ..
let g:netrw_hide=1
