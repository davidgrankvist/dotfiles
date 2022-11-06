" check for vscode-neovim https://github.com/vscode-neovim/vscode-neovim
if exists('g:vscode')
    runtime vscode.vim
else
    runtime plugins.vim
endif

command Godot :tabnew $HOME/.config | :lcd %
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
nnoremap <silent> <leader>h <c-w>h
nnoremap <silent> <leader>j <c-w>j
nnoremap <silent> <leader>k <c-w>k
nnoremap <silent> <leader>l <c-w>l
nnoremap <silent> <leader>s <c-w>s<c-w>j
nnoremap <silent> <leader>v <c-w>v<c-w>l
" brackets
inoremap <silent> jb ()<esc>i
inoremap <silent> jB (<enter>)<esc>O
inoremap <silent> jn []<esc>i
inoremap <silent> jm {<enter>}<esc>O
inoremap <silent> jM {}<esc>i
" blank line above/below
nnoremap <silent> <leader>o o<esc>k
nnoremap <silent> <leader>O O<esc>j
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
