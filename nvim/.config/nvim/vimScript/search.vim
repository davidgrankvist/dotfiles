" fzf.vim custom commands
" see https://github.com/junegunn/fzf.vim

" Custom rg:
" - don't match on file names
" - include hidden files, but not .git
"
" :help fzf-vim-example-advanced-ripgrep-integration
function! RipgrepFzf(query, fullscreen)
    let command_fmt = 'rg --hidden -g "!.git/" --column --line-number --no-heading --color=always --smart-case -- %s || true'
    let initial_command = printf(command_fmt, shellescape(a:query))
    let reload_command = printf(command_fmt, '{q}')
    let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" fzf.vim equivalents of goproj and godir.
"
" see:
" - bash/.bash_aliases
" - bin/.local/bin/scripts
"
" :h fzf#wrap
command! -bang -complete=dir -nargs=? Goproj
            \ call fzf#run(fzf#wrap({'source': 'findproj', 'dir': <q-args>}, <bang>0))
command! -bang -complete=dir -nargs=? Godir
            \ call fzf#run(fzf#wrap({'source': 'finddir', 'dir': <q-args>}, <bang>0))
