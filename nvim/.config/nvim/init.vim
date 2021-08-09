call plug#begin()

" Utility
Plug 'tpope/vim-surround'
Plug 'dense-analysis/ale'
Plug 'machakann/vim-highlightedyank'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" language support
Plug 'rust-lang/rust.vim' 
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'lervag/vimtex'
Plug 'kovetskiy/sxhkd-vim'

call plug#end()

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

