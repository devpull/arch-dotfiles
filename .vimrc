set number
set expandtab
set tabstop=4
set shiftwidth=4
syntax on

" Plugin manager vim-plug
call plug#begin()

" List your plugins
Plug 'ghifarit53/tokyonight-vim'

call plug#end()

set termguicolors
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
colorscheme tokyonight
