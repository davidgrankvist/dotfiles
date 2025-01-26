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
set guicursor=a:Cursor
set cursorline
set fillchars=stlnc:-
language en

let g:mapleader=','
let g:loaded_matchparen = 0

" esc mode
inoremap <silent> jk <esc>
cnoremap <silent> jk <esc>
tnoremap jk <c-\><c-n>
" command
nnoremap <space> :
xnoremap <space> :
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
nnoremap <silent> <c-s> <c-w><c-w>
nnoremap <silent> <leader>s <c-w>s<c-w>j
nnoremap <silent> <leader>v <c-w>v<c-w>l
" brackets
inoremap <silent> {<enter> {<enter>}<esc>O
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
" delete without loosing current yank
nnoremap <silent> <leader>d "_d
" replace selection with current yank
xnoremap <silent> <leader>p "_dP
" clipboard yank/paste
nnoremap <silent> <leader>y "*y
vnoremap <silent> <leader>y "*y
nnoremap <silent> <leader>p "*p
" cycle lists and buffers
nnoremap <silent> <c-j> :cnext<cr>zz
nnoremap <silent> <c-k> :cprev<cr>zz
nnoremap <silent> <leader>l :lnext<cr>zz
nnoremap <silent> <leader>h :lprev<cr>zz
nnoremap <silent> <S-Right> :bnext<cr>
nnoremap <silent> <S-Left> :bprev<cr>

let g:netrw_banner=0
let g:netrw_altv=1 " split ltr
let g:netrw_bufsettings="noma nomod nu nowrap ro nobl" " line numbers
let g:netrw_list_hide="^\\./$,^\\.\\./$" " hide . and ..
let g:netrw_hide=1
