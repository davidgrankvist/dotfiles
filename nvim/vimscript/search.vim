" fzf - Fuzzy find
" see https://github.com/junegunn/fzf.vim

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

" :RG command for function above
command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" mappings
nnoremap <c-p> :GFiles<cr>
nnoremap <c-y> :RG<cr>
