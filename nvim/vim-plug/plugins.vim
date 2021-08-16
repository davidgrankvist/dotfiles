call plug#begin()
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/lsp_extensions.nvim'
    Plug 'nvim-lua/completion-nvim'
    Plug 'hrsh7th/nvim-compe'
    Plug 'cespare/vim-toml'
    Plug 'dense-analysis/ale'
    Plug 'vim-airline/vim-airline'
call plug#end()

