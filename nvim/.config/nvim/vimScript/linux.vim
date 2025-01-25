command Godot :tabnew $MYVIMRC | :lcd %:h/../../.. | :e `pwd`
command Govim :tabnew $MYVIMRC | :lcd %:h:p
command Sovim :so $MYVIMRC

" fzf - see plugin/search.vim for :RG
nnoremap <silent> <leader>f :GFiles<cr>
nnoremap <silent> <leader><leader>f :RG<cr>
nnoremap <silent> <leader>F :Files<cr>
nnoremap <silent> <leader>b :Buffers<cr>
" zen mode
nnoremap <silent> <leader>z :ZenMode<cr>
