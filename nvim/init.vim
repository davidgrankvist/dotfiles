source $HOME/.config/nvim/vim-plug/plugins.vim

set number relativenumber
set completeopt=menuone,noinsert,noselect
set shortmess+=c

" netrw
let g:netrw_banner = 0 " hide top part
let g:netrw_altv = 1 " split ltr
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl' " line numbers
let g:netrw_list_hide = '^\./$,^\.\./$' " hide . and ..
let g:netrw_hide = 1 " enable hide

" airline
let g:airline#extensions#ale#enabled = 1

" fzf
nnoremap <c-p> :GFiles<cr>


lua require 'init'

