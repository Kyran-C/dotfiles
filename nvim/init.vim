set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.config/.vimrc
let g:python3_host_prog = '/usr/bin/python3'
set mouse=a
"let g:chromatica#enable_at_startup=1
"let g:chromatica#highlight_feature_level=1
call plug#begin('~/.local/share/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'rakr/vim-two-firewatch'
Plug 'KeitaNakamura/neodark.vim'
Plug 'morhetz/gruvbox'
Plug 'tlhr/anderson.vim'
Plug 'YorickPeterse/happy_hacking.vim'

Plug 'itchyny/lightline.vim'
Plug 'easymotion/vim-easymotion'
Plug 'Raimondi/delimitMate'
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'bbchung/Clamp'
"Plug 'arakashic/chromatica.nvim'
call plug#end()

set background=dark
"let g:onedark_termcolors = 256
let g:gruvbox_italic=1
colorscheme gruvbox
let g:lightline = { 'colorscheme': 'neodark' }
set noshowmode
"set termguicolors

"let g:chromatica#highlight_feature_level=1

"source ~/.config/nvim/cppsyntax.vim
" == Syntax highlighting ==
"hi chromaticaNamespaceRef guifg=#FF0000
