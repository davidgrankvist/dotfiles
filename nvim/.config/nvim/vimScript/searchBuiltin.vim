set path+=.,,**,**/*
set wildignore+=*/.git/*,*/bin/*

if expand('%:p:h') =~ 'dotfiles'
    set path+=*/.*/**
endif

noremap <leader>f :find<space>
nnoremap <leader><leader>f :vimgrep<space>/
