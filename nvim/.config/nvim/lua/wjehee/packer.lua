vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'machakann/vim-highlightedyank'
  use 'vim-airline/vim-airline'
  use 'arcticicestudio/nord-vim'
  use 'kyazdani42/nvim-web-devicons'
  use 'terrortylor/nvim-comment'

  --Language support
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- Telescope fuzzy finder
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'

  -- Tree sitter
  use { 'nvim-treesitter/nvim-treesitter',
  	cmd = ':TSUpdate'
  }
end)
