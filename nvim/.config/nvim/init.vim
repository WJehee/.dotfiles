set shell=/bin/bash

call plug#begin()

Plug 'tpope/vim-surround'
Plug 'dense-analysis/ale'
Plug 'machakann/vim-highlightedyank'

" language support
Plug 'rust-lang/rust.vim' 
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
" Plug 'plasticboy/vim-markdown'
Plug 'kovetskiy/sxhkd-vim'
Plug 'lambdalisue/suda.vim'

call plug#end()

set clipboard=unnamedplus

set shell=/bin/fish
set laststatus=2
set noshowmode
set number
set relativenumber
set background=dark
set shiftwidth=4

colorscheme tequila-sunrise 

let g:highlightedyank_highlight_duration = 1000


