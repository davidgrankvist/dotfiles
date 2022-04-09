call plug#begin()
    " LSP client config
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/lsp_extensions.nvim'
    " fuzzy find
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'editorconfig/editorconfig-vim'
    " autocompletion
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    " linting
    Plug 'dense-analysis/ale'
    " status bar
    Plug 'vim-airline/vim-airline'
call plug#end()

