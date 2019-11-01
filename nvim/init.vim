set runtimepath+=~/.vim,~/.vim/after,~/.config/dotfiles/nvim
set packpath+=~/.vim
source ~/.config/.vimrc
let g:python3_host_prog = '/usr/bin/python3'
let g:python2_host_prog = '/usr/bin/python2'
set mouse=a
"let g:chromatica#enable_at_startup=1
"let g:chromatica#highlight_feature_level=1
call plug#begin('~/.local/share/nvim/plugged')
"Plug 'joshdick/onedark.vim'
"Plug 'rakr/vim-one'
"Plug 'rakr/vim-two-firewatch'
"Plug 'KeitaNakamura/neodark.vim'
"Plug 'morhetz/gruvbox'
"Plug 'tlhr/anderson.vim'
"Plug 'YorickPeterse/happy_hacking.vim'
"Plug 'orthecreedence/void.vim'
"Plug 'vyshane/vydark-vim-color'

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'thaerkh/vim-workspace'

Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'


Plug 'Raimondi/delimitMate'
Plug 'easymotion/vim-easymotion'
Plug 'chaoren/vim-wordmotion'
Plug 'tpope/vim-commentary'
"Plug 'dbgx/lldb.nvim'

"Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh', }
"Plug 'junegunn/fzf'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

"Plug 'ludovicchabant/vim-gutentags'
"Plug 'bbchung/Clamp'
"Plug 'arakashic/chromatica.nvim'
call plug#end()

syntax clear
syntax match Syntax_noise /{/
highlight Syntax_noise ctermfg=red

let g:lsp_cxx_hl_use_text_props = 1
let g:lsp_cxx_hl_log_file = '/tmp/lsp-cxx-hl.log'
let g:lsp_cxx_hl_verbose_log = 1



set background=dark
"let g:onedark_termcolors = 256
let g:gruvbox_italic=1
colorscheme custom_colors

function! CocCurrentFunction()
	"return ":("
	"return b:coc_current_function
	return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = { 
		\ 'colorscheme': 'custom_colors',
		\ 'active': {
		\ 	'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ], [ 'currentfunction' ] ],
		\	'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
		\ },
		\ 'inactive': {
		\ 	'left': [ [ 'readonly', 'filename', 'modified' ] ],
		\	'right': []
		\ },
		\ 'component_function': {
		\ 	'cocstatus': 'coc#status',
		\	'currentfunction': 'CocCurrentFunction'
		\ },
		\ }
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

set noshowmode

set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300

inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><F19><LTab> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

"set termguicolors
let g:workspace_autosave_untrailspaces = 0
