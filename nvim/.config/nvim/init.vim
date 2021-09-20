" Plugins
call plug#begin()

" Git
Plug 'tpope/vim-fugitive'

" Hightlight yank
Plug 'machakann/vim-highlightedyank'

" Status bar
Plug 'vim-airline/vim-airline'

" Color
Plug 'arcticicestudio/nord-vim'

" Intellisense
Plug 'hrsh7th/nvim-cmp'
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'

call plug#end()

luafile ~/.config/nvim/lua/language.lua

colorscheme nord

set noshowmode
set nohlsearch
set number
set hidden
set relativenumber
set expandtab
set smartindent
set nowrap
set noerrorbells
set noswapfile
set nobackup
set incsearch

set signcolumn=yes
set scrolloff=8
set background=dark
set laststatus=2
set tabstop=4 softtabstop=4
set shiftwidth=4
set notermguicolors t_Co=16
set shell=/bin/zsh
set clipboard=unnamedplus

let g:highlightedyank_highlight_duration = 1000

" Remaps

let mapleader = " "

