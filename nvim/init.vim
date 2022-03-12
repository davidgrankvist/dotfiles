source $HOME/.config/nvim/vim-plug/plugins.vim

" fzf
nnoremap <c-p> :GFiles<cr>

set number relativenumber
set completeopt=menuone,noinsert,noselect
set shortmess+=c

" netrw
let g:netrw_banner = 0 " hide top part
let g:netrw_altv = 1 " split ltr

let g:airline#extensions#ale#enabled = 1

lua require 'init'

