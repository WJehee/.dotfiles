call plug#begin()

Plug 'machakann/vim-highlightedyank'
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'

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

call plug#end()

colorscheme nord

let g:highlightedyank_highlight_duration = 1000

" Remaps
let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({search = "hello"})


" Autocommands
augroup YEP
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END
