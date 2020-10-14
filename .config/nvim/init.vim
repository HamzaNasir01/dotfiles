call plug#begin('~/.config/nvim/plugged')
Plug 'joshdick/onedark.vim'
call plug#end()

set termguicolors
set background=dark
set number
set relativenumber
set ruler
syntax enable
colorscheme onedark

set tabstop=4 shiftwidth=4 expandtab
