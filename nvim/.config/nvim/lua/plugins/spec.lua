-- plugin list for lazy.nvim plugin manager
return {
  { 'nvim-lua/plenary.nvim' },
  { 'neovim/nvim-lspconfig' },
  { 'nvim-lua/lsp_extensions.nvim' },
  { 'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'editorconfig/editorconfig-vim' },
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' },
  { 'hrsh7th/cmp-vsnip' },
  -- some issue with Lua, disabled for now..
  -- { 'hrsh7th/vim-vsnip' },
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  { 'tpope/vim-fugitive' },
  { 'tpope/vim-commentary' },
  { 'tpope/vim-surround' },
}
