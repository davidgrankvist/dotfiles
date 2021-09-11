source $HOME/.config/nvim/vim-plug/plugins.vim

" fzf
nnoremap <c-p> :Files<cr>
" cycle LSP diagnostics
nnoremap <silent> H           <cmd>lua vim.lsp.diagnostic.goto_prev()<cr>
nnoremap <silent> L           <cmd>lua vim.lsp.diagnostic.goto_next()<cr>

set number relativenumber
set completeopt=menuone,noinsert,noselect
set shortmess+=c

" netrw
let g:netrw_liststyle = 3 " treeview
let g:netrw_banner = 0 " hide top part
let g:netrw_altv = 1 " split ltr

let g:airline#extensions#ale#enabled = 1

lua require 'init'

