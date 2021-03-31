call plug#begin('~/.config/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
call plug#end()

set termguicolors
set background=dark
set number
set relativenumber
set ruler
syntax enable
colorscheme onedark

set tabstop=4 shiftwidth=4 expandtab

" treesitter-based folding
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

" ALT-j and ALT-k to move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" nvim-treesitter config
lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    highlight = { enable = true },
    indent = { enable = true },
}
EOF

" pyright language server
lua << EOF
require'lspconfig'.pyright.setup{}
EOF
