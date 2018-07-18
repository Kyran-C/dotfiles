set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.config/.vimrc
let g:python3_host_prog = '/usr/bin/python3'
let g:python2_host_prog = '/usr/bin/python2'
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
Plug 'orthecreedence/void.vim'
Plug 'vyshane/vydark-vim-color'

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'thaerkh/vim-workspace'
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'lyuts/vim-rtags'
Plug 'Raimondi/delimitMate'
Plug 'easymotion/vim-easymotion'
Plug 'chaoren/vim-wordmotion'
Plug 'tpope/vim-commentary'
"Plug 'dbgx/lldb.nvim'

"Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh', }
"Plug 'junegunn/fzf'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

"Plug 'ludovicchabant/vim-gutentags'
"Plug 'bbchung/Clamp'
"Plug 'arakashic/chromatica.nvim'
call plug#end()

set background=dark
"let g:onedark_termcolors = 256
let g:gruvbox_italic=1
colorscheme custom_colors
let g:lightline = { 'colorscheme': 'custom_colors' }
set noshowmode
"set termguicolors
let g:workspace_autosave_untrailspaces = 0


"let g:LanguageClient_serverCommands = {
	"\ 'cpp': ['/usr/bin/cquery', '--log-file=/tmp/cq.log']
	"\ }
"let g:LanguageClient_settingsPath = '/home/kyran/.config/nvim/settings.json'
