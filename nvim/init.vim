source $HOME/.config/nvim/vim-plug/plugins.vim

nnoremap <c-p> :Files<cr>

set number relativenumber
set completeopt=menuone,noinsert,noselect
set shortmess+=c

let g:netrw_liststyle = 3
let g:airline#extensions#ale#enabled = 1

lua require 'init'

