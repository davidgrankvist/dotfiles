call plug#begin()
    " lsp client config
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/lsp_extensions.nvim'
    " null-ls
    Plug 'nvim-lua/plenary.nvim'
    Plug 'jose-elias-alvarez/null-ls.nvim'
    " fuzzy find
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " formatting
    Plug 'editorconfig/editorconfig-vim'
    " autocompletion
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    " color theme
    Plug 'projekt0n/github-nvim-theme'
    " git
    Plug 'tpope/vim-fugitive'
    " comment out code
    Plug 'tpope/vim-commentary'
    " surround with quotes, brackets, tags, etc.
    Plug 'tpope/vim-surround'
call plug#end()

