runtime plugins.vim

command Godot :tabnew $MYVIMRC | :lcd %:h/../../.. | :e `pwd`
command Govim :tabnew $MYVIMRC | :lcd %:h
command Sovim :so $MYVIMRC

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
inoremap <silent> ( ()<esc>i
inoremap <silent> [ []<esc>i
inoremap <silent> {<space> {<space><space>}<esc>hi
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
" fzf - see plugin/search.vim for :RG
nnoremap <silent> <leader>f :GFiles<cr>
nnoremap <silent> <leader><leader>f :RG<cr>
nnoremap <silent> <leader>F :Files<cr>
" quickfix / location lists
nnoremap <silent> <c-j> :cnext<cr>zz
nnoremap <silent> <c-k> :cprev<cr>zz
nnoremap <silent> <leader>l :lnext<cr>zz
nnoremap <silent> <leader>h :lprev<cr>zz

let g:netrw_banner=0
let g:netrw_altv=1 " split ltr
let g:netrw_bufsettings="noma nomod nu nowrap ro nobl" " line numbers
let g:netrw_list_hide="^\\./$,^\\.\\./$" " hide . and ..
let g:netrw_hide=1
