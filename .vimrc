let termcompatibility = $VIM_TERM_COMPAT
let mapleader="\<space>"
"nmap <Space> <leader>
set title
set timeoutlen=150
set relativenumber number
set tabstop=4
set shiftwidth=4
set virtualedit=onemore
set foldmethod=syntax
set foldminlines=1
set nofoldenable
" keep cursor centered in view
set scrolloff=999
set sidescrolloff=20
set nowrap
set nosmarttab
set inccommand=split
set cursorline
set t_Co=256

" == Mapping functions ==
"    == Shift ==
function NMapShift( character, target )
if g:termcompatibility
exec ":nnoremap <F19>" . a:character . " " . a:target
else
exec ":nnoremap <S-" . a:character . "> " . a:target
endif
endfunction

function IMapShift( character, target )
if g:termcompatibility
exec ":inoremap <F19>" . a:character . " " . a:target
else
exec ":inoremap <S-" . a:character . "> " . a:target
endif
endfunction

function CMapShift( character, target )
if g:termcompatibility
exec ":cnoremap <F19>" . a:character . " " . a:target
else
exec ":cnoremap <S-" . a:character . "> " . a:target
endif
endfunction

"    == Ctrl ==
function MapCtrl( character, target )
if g:termcompatibility
exec "inoremap <F13>" . a:character . " " . a:target
else
exec "inoremap <C-" . a:character . "> " . a:target
endif
endfunction

function IMapCtrl( character, target )
if g:termcompatibility
exec ":inoremap <F13>" . a:character . " " . a:target
else
		exec ":inoremap <C-" . a:character . "> " . a:target
	endif
endfunction

function NMapCtrl( character, target )
	if g:termcompatibility
		exec ":nnoremap <F13>" . a:character . " " . a:target
	else
		exec ":nnoremap <C-" . a:character . "> " . a:target
	endif
endfunction

function OMapCtrl( character, target )
	if g:termcompatibility
		exec ":onoremap <F13>" . a:character . " " . a:target
	else
		exec ":onoremap <C-" . a:character . "> " . a:target
	endif
endfunction

function CMapCtrl( character, target )
	if g:termcompatibility
		exec ":cnoremap <F13>" . a:character . " " . a:target
	else
		exec ":cnoremap <C-" . a:character . "> " . a:target
	endif
endfunction

function VMapCtrl( character, target )
	if g:termcompatibility
		exec ":vnoremap <F13>" . a:character . " " . a:target
	else
		exec ":vnoremap <C-" . a:character . "> " . a:target
	endif
endfunction

"    == Ctrl Shift ==
function MapCtrlShift( character, target )
	if g:termcompatibility
		exec ":noremap <F14>" . a:character . " " . a:target
	else
		exec ":noremap <C-S-" . a:character . "> " . a:target
	endif
endfunction

function IMapCtrlShift( character, target )
	if g:termcompatibility
		exec ":inoremap <F14>" . a:character . " " . a:target
	else
		exec ":inoremap <C-S-" . a:character . "> " . a:target
	endif
endfunction

function NMapCtrlShift( character, target )
	if g:termcompatibility
		exec ":nnoremap <F14>" . a:character . " " . a:target
	else
		exec ":nnoremap <C-S-" . a:character . "> " . a:target
	endif
endfunction

function OMapCtrlShift( character, target )
	if g:termcompatibility
		exec ":onoremap <F14>" . a:character . " " . a:target
	else
		exec ":onoremap <C-S-" . a:character . "> " . a:target
	endif
endfunction

function CMapCtrlShift( character, target )
	if g:termcompatibility
		exec ":cnoremap <F14>" . a:character . " " . a:target
	else
		exec ":cnoremap <C-S-" . a:character . "> " . a:target
	endif
endfunction

function VMapCtrlShift( character, target )
	if g:termcompatibility
		exec ":vnoremap <F14>" . a:character . " " . a:target
	else
		exec ":vnoremap <C-S-" . a:character . "> " . a:target
	endif
endfunction

"    == Alt ==
function MapAlt( character, target )
	if g:termcompatibility
		exec ":noremap <F15>" . a:character . " " . a:target
	else
		exec ":noremap <M-" . a:character . "> " . a:target
	endif
endfunction

function IMapAlt( character, target )
	if g:termcompatibility
		exec ":inoremap <F15>" . a:character . " " . a:target
	else
		exec ":inoremap <M-" . a:character . "> " . a:target
	endif
endfunction

function NMapAlt( character, target )
	if g:termcompatibility
		exec ":nnoremap <F15>" . a:character . " " . a:target
	else
		exec ":nnoremap <M-" . a:character . "> " . a:target
	endif
endfunction

function NMapAltPrefix( prefix, character, target )
	if g:termcompatibility
		exec ":nnoremap " . a:prefix . "<F15>" . a:character . " " . a:target
	else
		exec ":nnoremap <M-" . a:character . "> " . a:target
	endif
endfunction

function OMapAlt( character, target )
	if g:termcompatibility
		exec ":onoremap <F15>" . a:character . " " . a:target
	else
		exec ":onoremap <M-" . a:character . "> " . a:target
	endif
endfunction

function CMapAlt( character, target )
	if g:termcompatibility
		exec ":cnoremap <F15>" . a:character . " " . a:target
	else
		exec ":cnoremap <M-" . a:character . "> " . a:target
	endif
endfunction

function VMapAlt( character, target )
	if g:termcompatibility
		exec ":vnoremap <F15>" . a:character . " " . a:target
	else
		exec ":vnoremap <M-" . a:character . "> " . a:target
	endif
endfunction

"    == Alt Shift ==
function MapAltShift( character, target )
	if g:termcompatibility
		exec ":noremap <F16>" . a:character . " " . a:target
	else
		exec ":noremap <M-S-" . a:character . "> " . a:target
	endif
endfunction

function IMapAltShift( character, target )
	if g:termcompatibility
		exec ":inoremap <F16>" . a:character . " " . a:target
	else
		exec ":inoremap <M-S-" . a:character . "> " . a:target
	endif
endfunction

function NMapAltShift( character, target )
	if g:termcompatibility
		exec ":nnoremap <F16>" . a:character . " " . a:target
	else
		exec ":nnoremap <M-S-" . a:character . "> " . a:target
	endif
endfunction

function OMapAltShift( character, target )
	if g:termcompatibility
		exec ":onoremap <F16>" . a:character . " " . a:target
	else
		exec ":onoremap <M-S-" . a:character . "> " . a:target
	endif
endfunction

function CMapAltShift( character, target )
	if g:termcompatibility
		exec ":cnoremap <F16>" . a:character . " " . a:target
	else
		exec ":cnoremap <M-S-" . a:character . "> " . a:target
	endif
endfunction

function VMapAltShift( character, target )
	if g:termcompatibility
		exec ":vnoremap <F16>" . a:character . " " . a:target
	else
		exec ":vnoremap <M-S-" . a:character . "> " . a:target
	endif
endfunction

"    == Ctrl Alt ==
function MapCtrlAlt( character, target )
	if g:termcompatibility
		exec ":noremap <F17>" . a:character . " " . a:target
	else
		exec ":noremap <C-M-" . a:character . "> " . a:target
	endif
endfunction

function IMapCtrlAlt( character, target )
	if g:termcompatibility
		exec ":inoremap <F17>" . a:character . " " . a:target
	else
		exec ":inoremap <C-M-" . a:character . "> " . a:target
	endif
endfunction

function NMapCtrlAlt( character, target )
	if g:termcompatibility
		exec ":nnoremap <F17>" . a:character . " " . a:target
	else
		exec ":nnoremap <C-M-" . a:character . "> " . a:target
	endif
endfunction

function OMapCtrlAlt( character, target )
	if g:termcompatibility
		exec ":onoremap <F17>" . a:character . " " . a:target
	else
		exec ":onoremap <C-M-" . a:character . "> " . a:target
	endif
endfunction

function CMapCtrlAlt( character, target )
	if g:termcompatibility
		exec ":cnoremap <F17>" . a:character . " " . a:target
	else
		exec ":cnoremap <C-M-" . a:character . "> " . a:target
	endif
endfunction

function VMapCtrlAlt( character, target )
	if g:termcompatibility
		exec ":vnoremap <F17>" . a:character . " " . a:target
	else
		exec ":vnoremap <C-M-" . a:character . "> " . a:target
	endif
endfunction

inoremap <c-s> <Esc>:w<CR>a
" == EasyMotion ==
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
map <space>f <Plug>(easymotion-s)
map <F10> <Plug>(easymotion-s)

" == Reload .vimrc ==
:call MapAlt( "<F15>r", ":source ~/.config/.vimrc<CR>" )

" == Tabs ==
nnoremap  :tabnew<CR>
nnoremap  :tabclose<CR>
:call NMapCtrl( "<LTab>", ":tabnext<CR>" )
:call NMapCtrlShift( "<LTab>", ":tabprevious<CR>" )
noremap <M-Left>  :-tabmove<cr>
noremap <M-Right> :+tabmove<cr>

" fix tabs
imap <F13><LTab> <C-Tab>
cmap <F13><LTab> <C-Tab>
xmap <F13><LTab> <C-Tab>
omap <F13><LTab> <C-Tab>
vmap <F13><LTab> <C-Tab>

imap <F14><LTab> <C-S-Tab>
cmap <F14><LTab> <C-S-Tab>
xmap <F14><LTab> <C-S-Tab>
omap <F14><LTab> <C-S-Tab>
vmap <F14><LTab> <C-S-Tab>

imap <F15><LTab> <M-Tab>
cmap <F15><LTab> <M-Tab>
xmap <F15><LTab> <M-Tab>
omap <F15><LTab> <M-Tab>
vmap <F15><LTab> <M-Tab>

imap <F16><LTab> <M-S-Tab>
cmap <F16><LTab> <M-S-Tab>
xmap <F16><LTab> <M-S-Tab>
omap <F16><LTab> <M-S-Tab>
vmap <F16><LTab> <M-S-Tab>

imap <F17><LTab> <C-M-Tab>
cmap <F17><LTab> <C-M-Tab>
xmap <F17><LTab> <C-M-Tab>
omap <F17><LTab> <C-M-Tab>
vmap <F17><LTab> <C-M-Tab>

imap <F18><LTab> <C-M-S-Tab>
cmap <F18><LTab> <C-M-S-Tab>
xmap <F18><LTab> <C-M-S-Tab>
omap <F18><LTab> <C-M-S-Tab>
vmap <F18><LTab> <C-M-S-Tab>

map <F19><LTab> <S-Tab>
imap <F19><LTab> <S-Tab>
cmap <F19><LTab> <S-Tab>
xmap <F19><LTab> <S-Tab>
omap <F19><LTab> <S-Tab>
vmap <F19><LTab> <S-Tab>

map <F13><CR> <C-CR>
map <F13><spc> <C-Space>
map <F13><BS> <C-BS>

" == Nerd Tree ==
nnoremap  :NERDTreeToggle<CR>

" == Folding ==
nnoremap z; zo
nnoremap zj zc
nnoremap zk zM
nnoremap zl zR
"nnoremap <F15>z<F15>; zO
"nnoremap <F15>z<F15>j zC
"nnoremap <F15>z<F15>k zM
"nnoremap <F15>z<F15>l zR
:call NMapAltPrefix( "z", ";", "z0" )
:call NMapAltPrefix( "z", "j", "zC" )
:call NMapAltPrefix( "z", "k", "zM" )
:call NMapAltPrefix( "z", "l", "zR" )

" == Saving ==
nnoremap <c-s> :w<CR>

" == Snippets for auto-formatting curly braces and parens ==
"inoremap <F14>{ {<CR><Tab><CR>}<Esc>k_a<BS>
:call IMapCtrlShift( "{", "{<CR><Tab><CR>}<Esc>k_a<BS>" )
:call IMapCtrlShift( "}", "{<CR><Tab><CR>}<Esc>k_a<BS>" )
:call IMapCtrlShift( "(", "(  )<Esc>hi" )
:call IMapCtrlShift( ")", "(  )<Esc>hi" )

" == Snippet to map alt-space and shift-space to underscore
:call IMapAlt( "<spc>", "_" )
:call CMapAlt( "<spc>", "_" )
:call IMapShift( "<spc>", "_")
:call CMapShift( "<spc>", "_")
" == alt-. to "->"
:call IMapAlt( ".", "->" )
" == ctrl-space to " | "
:call IMapCtrl( "<spc>", "<space><space><Esc>i" )
" == alt-; adds a semicolon at the end of the line
:call IMapAlt( ";", "<Esc>myA;<Esc>`ya" )
:call NMapAlt( ";", "myA;<Esc>`y" )

" == Toggle Commenting ==
:call NMapAlt( "/", "<Plug>CommentaryLine" )
:call VMapAlt( "/", "<Plug>CommentaryLine" )

" == Jump List ==
nnoremap g, <c-o>
nnoremap g. <c-i>

" prevent ctrl space from interfering
nnoremap <c-space> <nop>
nnoremap g; <nop>

" == Marks ==
nnoremap ' `
nnoremap ` '
"        alt-' to create mark
"        (redundant mappings since mapping function doesn't seem to work with ')
	nnoremap <F15>' m
	nnoremap <M-'> m

" == Escape ==
inoremap jk <Esc>`^
inoremap kj <Esc>`^
vnoremap jk <Esc>
vnoremap kj <Esc>

" == Undo/Redo ==
noremap <c-z> <undo>
inoremap <c-z> <Esc><undo>gi
noremap <c-r> <c-R>
inoremap <c-r> <Esc><c-R>gi

" == Visual mode ==
nnoremap s v
vnoremap s v
nnoremap S V
vnoremap S V
:call NMapAltShift( "s", "<c-V>" )

" remap directional keys
noremap j h
noremap k k
noremap l j
noremap ; l
vnoremap j h
vnoremap k k
vnoremap l j
vnoremap ; l
onoremap j h
onoremap k k
onoremap l j
onoremap ; l
:call IMapCtrl( "j", "h" )
inoremap  k
inoremap  j
:call IMapCtrl( ";", "l" )

" == Window Splits ==
set winminheight=0
noremap <c-h> :vsp 
noremap <c-v> :sp 
:call MapCtrlShift( "h", ":vsp<CR>" )
:call MapCtrlShift( "v", ":sp<CR>" )
"       ctrl focuses adjacent splits
" FIXME ctrl mappings not working for focusing splits, reverted to manual noremaps
":call MapCtrl( "j", "<c-w>h" )
noremap <F13>j <c-w>h
noremap <c-k> <c-w>k
noremap <c-l> <c-w>j
":call MapCtrl( ";", "<c-w>l" )
noremap <F13>; <c-w>l
"       ctrl-alt resizes
:call MapCtrlAlt( "k", "<c-w>4-" )
:call MapCtrlAlt( "l", "<c-w>4+" )
:call MapCtrlAlt( "j", "<c-w>4<" )
:call MapCtrlAlt( ";", "<c-w>4>" )
"       ctrl-shift moves
:call MapCtrlShift( "j", "<c-w>H" )
:call MapCtrlShift( "<coln>", "<c-w>L" )
:call MapCtrlShift( "k", "<c-w>K" )
:call MapCtrlShift( "l", "<c-w>J" )
"       ctrl-shift moves
"noremap <F14>j <c-w>r
"noremap <F14><coln> <c-w>R
"noremap <F14>k <c-w>x
"noremap <F14>l <c-w>X
"       ctrl-+ maximises (and recenters window on cursor)
:call MapCtrlShift( "+", "<c-w>_<c-w><bar>zz")      

" == Next/Previous Occurance ==
noremap h n
noremap H N
" clear highlighted search
nnoremap <silent> <esc> :noh<return><esc>

" == Find/Till ==
noremap y f
onoremap y f
vnoremap y f
noremap Y F
vnoremap Y F
onoremap Y F

" == Insert/Append ==
noremap n i
noremap N I
noremap m a
noremap M A
noremap <leader>m a<Space><Esc>
noremap <leader>n i<Space><Esc>

" == Change ==
noremap f "_c
onoremap f c
vnoremap f "_c


" == Paste ==
nnoremap v p
nnoremap V P
nnoremap c y
vnoremap c y
onoremap c y
nnoremap C Y
onoremap C Y 

" == Cut/Delete ==
noremap D d
onoremap D d
vnoremap D d
nnoremap d "_d
vnoremap d "_d
noremap x "_x
noremap X "_X
" ctrl x deletes, alt x backspaces
inoremap  "_x
:call IMapAlt( "x", "\"_X" )

" == Inner/Outer ==
onoremap a a
onoremap s i
vnoremap a a
vnoremap s i
onoremap ap aw
onoremap sp iw

" == Word-wise movements ==
noremap u ge
noremap i b
noremap o e
noremap p w
inoremap  hgel
:call IMapCtrl( "i", "b" )
:call IMapCtrl( "o", "el" )
inoremap  w
" == WORD-wise movements ==
noremap U gE
noremap I B
noremap O E
noremap P W
:call IMapCtrlShift( "u", "gE" )
:call IMapCtrlShift( "i", "B" )
:call IMapCtrlShift( "o", "E" )
:call IMapCtrlShift( "p", "W" )
" == Camel/Snake case word movement ==
" noremap <F15>u <Plug>CamelCaseMotion_ge
" noremap <F15>i <Plug>CamelCaseMotion_b
" noremap <F15>o <Plug>CamelCaseMotion_e
" noremap <F15>p <Plug>CamelCaseMotion_w
let g:wordmotion_mappings = {
\ 'w' : '<F15>p',
\ 'b' : '<F15>i',
\ 'e' : '<F15>o',
\ 'ge' : '<F15>u',
\ 'aw' : 'a<F15>w',
\ 'iw' : 's<F15>w',
\ '<C-R><C-W>' : ''
\ }

" == Move within a line ==
nnoremap gj ^
vnoremap gj ^
nnoremap g; g_
vnoremap g; g_
nnoremap gJ 0
vnoremap gJ 0
nnoremap g: $
vnoremap g: $

onoremap gj ^
onoremap g; g_
onoremap gJ 0
onoremap g: $

" == Move within file (begin/end) ==
noremap gk gg
noremap gl G
onoremap gk gg
onoremap gl G

" == Move to braces/parentheses ==
"        alt moves to next open/close brace
:call NMapAlt( "]", "]}" )
:call NMapAlt( "[", "[{" )
"        alt-shift moves to previous open/close brace
:call NMapAltShift( "}", "]{" )
:call NMapAltShift( "{", "[}" )
"     == operator pending mappings ==
:call OMapAlt( "]", "]}" )
:call OMapAlt( "[", "[{" )
:call OMapAltShift( "}", "]{" )
:call OMapAltShift( "{", "[}" )
"        alt moves to next open/close parenthesis
:call NMapAlt( "0", "])" )
:call NMapAlt( "9", "](" )
"        alt-shift moves to previous open/close parenthesis
:call NMapAltShift( ")", "[)" )
:call NMapAltShift( "(", "[(" )
"     == operator pending mappings ==
:call OMapAlt( "0", "])" )
:call OMapAlt( "9", "](" )
:call OMapAltShift( ")", "[)" )
:call OMapAltShift( "(", "[(" )

"noremap <silent> <F15>o /}<CR>:noh<CR>
"noremap <silent> <F15>p /{<CR>:noh<CR>
"noremap <silent> <F15>i ?{<CR>:noh<CR>
"noremap <silent> <F15>u ?}<CR>:noh<CR>

" noremap <silent> <F15>o /{<CR>:noh<CR>
" noremap <silent> <F15>p /{<CR>:noh<CR>%
" noremap <silent> <F15>i ?}<CR>:noh<CR>
" noremap <silent> <F15>u ?}<CR>:noh<CR>%

" == Move to start/end of method ==
"noremap <F15>o j0[[%/{<CR>
"noremap <F15>p /}<CR>b99]}
"noremap <F15>i ?{<CR>w99[{ 
"noremap <F15>u k$][%?}<CR>

"       alt-shift for parentheses
"noremap <F16>o ])
"noremap <F16>p ](
"noremap <F16>i [(
"noremap <F16>u [)

" == Insert on line above/below ==  
nnoremap <leader>l o
nnoremap <leader>k O

" == Prepend/Append newline to current line ==
:call NMapShift( "<spc>L", "myo<Esc>^D`y" )
:call NMapShift( "<spc>K", "myO<Esc>^D`y" )

" == Bubble lines ==
nnoremap <silent> <F15>k myV:move '<-2<CR><Esc>`y
nnoremap <silent> <F15>l myV:move '>+1<CR><Esc>`y
vnoremap <silent> <F15>k :move '<-2<CR><Esc>gv
vnoremap <silent> <F15>l :move '>+1<CR><Esc>gv

" == Repeat last action ==
nnoremap a .

" == Indenting ==
"        maintain selection after indent/outdent
vnoremap < <gv
vnoremap > >gv

" == Comment ==
"omap <F13>/ c
"nmap <F13>/ gc
nmap <F17>/ n// ==========================================================================================================================================================kn 



nn <silent> b :call CocActionAsync('doHover')<CR>
"nmap b <Plug>(coc-definition)
"nnoremap bj :call CocLocations('ccls','$ccls/navigate',{'direction':'U'})<CR>
"nnoremap b; :call CocLocations('ccls','$ccls/navigate',{'direction':'D'})<CR>
"nnoremap bk :call CocLocations('ccls','$ccls/navigate',{'direction':'L'})<CR>
"nnoremap bl :call CocLocations('ccls','$ccls/navigate',{'direction':'R'})<CR>

