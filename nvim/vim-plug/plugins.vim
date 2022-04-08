call plug#begin()
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/lsp_extensions.nvim'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'cespare/vim-toml'
    Plug 'dense-analysis/ale'
    Plug 'vim-airline/vim-airline'
call plug#end()

