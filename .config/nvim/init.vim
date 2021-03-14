call plug#begin('~/.config/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

set termguicolors
set background=dark
set number
set relativenumber
set ruler
syntax enable
colorscheme onedark

set tabstop=4 shiftwidth=4 expandtab

lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    highlight = { enable = true },
}
EOF
