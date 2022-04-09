source $HOME/.config/nvim/vim-plug/plugins.vim

set number relativenumber
set completeopt=menuone,noinsert,noselect
set shortmess+=c
nnoremap <c-t> :tabnew<cr>

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
" Custom rg:
" - don't match on file names
" - include hidden files, but not .git
function! RipgrepFzf(query, fullscreen) " see :help fzf-vim-example-advanced-ripgrep-integration
    let command_fmt = 'rg --hidden -g "!.git/" --column --line-number --no-heading --color=always --smart-case -- %s || true'
    let initial_command = printf(command_fmt, shellescape(a:query))
    let reload_command = printf(command_fmt, '{q}')
    let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0) " :RG command for function above
nnoremap <c-y> :RG<cr>

lua require 'init'

