call plug#begin()

Plug 'machakann/vim-highlightedyank'
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
Plug 'kyazdani42/nvim-web-devicons'

" Language support
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'

" Telescope fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

colorscheme nord

let g:highlightedyank_highlight_duration = 1000

" Remaps
let mapleader = " "
nnoremap <leader>ff :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>fg :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>fb :lua require('telescope.builtin').buffers()<CR>

" Autocommands
augroup YEP
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END
