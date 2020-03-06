set shell=/bin/zsh

call plug#begin()

Plug 'tpope/vim-surround'
Plug 'dense-analysis/ale'
Plug 'machakann/vim-highlightedyank'
Plug 'vim-airline/vim-airline'

" language support
Plug 'rust-lang/rust.vim' 
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'kovetskiy/sxhkd-vim'
Plug 'lervag/vimtex'

call plug#end()

set clipboard=unnamedplus

set shell=/bin/fish
set laststatus=2
set noshowmode
set number
set relativenumber
set background=dark
set shiftwidth=4
set notermguicolors t_Co=16

let g:highlightedyank_highlight_duration = 1000


