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
"set cursorline

" == EasyMotion ==
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
map <space>f <Plug>(easymotion-s)

" == Reload .vimrc ==
noremap <F15>r :source ~/.config/.vimrc<CR>

" == Tabs ==
nnoremap  :tabnew<CR>
nnoremap  :tabclose<CR>
nnoremap <F13><LTab> :tabnext<CR>
nnoremap <F14><LTab> :tabprevious<CR>
noremap <M-Left>  :-tabmove<cr>
noremap <M-Right> :+tabmove<cr>

" == Nerd Tree ==
nnoremap  :NERDTreeToggle<CR>

" == Folding ==
nnoremap z; zo
nnoremap zj zc
nnoremap zk zm
nnoremap zl zr
"nnoremap <F15>z<F15>; zO
"nnoremap <F15>z<F15>j zC
"nnoremap <F15>z<F15>k zM
"nnoremap <F15>z<F15>l zR
nnoremap z<F15>; zO
nnoremap z<F15>j zC
nnoremap z<F15>k zM
nnoremap z<F15>l zR

" == Saving ==
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>a

" == Snippets for auto-formatting curly braces and parens ==
inoremap <F14>{ {<CR><Tab><CR>}<Esc>k_a<BS>
inoremap <F14>( (  )<Esc>hi
inoremap <F14>) (  )<Esc>hi

" == Snippet to map alt-space to underscore
inoremap <F15><spc> _
cnoremap <F15><spc> _
" == alt-. to "->"
inoremap <F15>. ->
" == ctrl-space to " | "
inoremap <F13><spc> <space><space><Esc>i
" == alt-; adds a semicolon at the end of the line
inoremap <F15>; <Esc>myA;<Esc>`ya
nnoremap <F15>; myA;<Esc>`y

" == Toggle Commenting ==
nmap <F15>/ <Plug>CommentaryLine 
vmap <F15>/ <Plug>CommentaryLine

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
nnoremap <F15>' m

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
nnoremap <F16>s <c-V>

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
inoremap <F13>j h
inoremap  k
inoremap  j
inoremap <F13>; l

" == Window Splits ==
set winminheight=0
noremap <c-h> :vsp 
noremap <c-v> :sp 
noremap <F14>h :vsp<CR>
noremap <F14>v :sp<CR>
"       ctrl focuses adjacent splits
noremap <F13>j <c-w>h
noremap <c-k> <c-w>k
noremap <c-l> <c-w>j
noremap <F13>; <c-w>l
"       ctrl-alt resizes
noremap <F17>k <c-w>4-
noremap <F17>l <c-w>4+
noremap <F17>j <c-w>4<
noremap <F17>; <c-w>4>
"       ctrl-shift moves
noremap <F14>j <c-w>H
noremap <F14><coln> <c-w>L
noremap <F14>k <c-w>K
noremap <F14>l <c-w>J
"       ctrl-shift moves
"noremap <F14>j <c-w>r
"noremap <F14><coln> <c-w>R
"noremap <F14>k <c-w>x
"noremap <F14>l <c-w>X
"       ctrl-+ maximises (and recenters window on cursor)
noremap <F14>+ <c-w>_<c-w><bar>zz      

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
inoremap <F15>x "_X

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
inoremap <F13>i b
inoremap <F13>o el
inoremap  w
" == WORD-wise movements ==
noremap U gE
noremap I B
noremap O E
noremap P W
inoremap <F14>u gE
inoremap <F14>i B
inoremap <F14>o E
inoremap <F14>p W
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
nnoremap <F15>] ]}
nnoremap <F15>[ [{
"        alt-shift moves to previous open/close brace
nnoremap <F16>} ]{
nnoremap <F16>{ [}
"     == operator pending mappings ==
onoremap <F15>] ]}
onoremap <F16>} [}
onoremap <F15>[ ]{
onoremap <F16>{ [{
"        alt moves to next open/close parenthesis
nnoremap <F15>0 ])
nnoremap <F15>9 ](
"        alt-shift moves to previous open/close parenthesis
nnoremap <F16>) [)
nnoremap <F16>( [(
"     == operator pending mappings ==
onoremap <F15>0 ])
onoremap <F15>9 ](
onoremap <F16>) [)
onoremap <F16>( [(

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
nnoremap <F19><spc>L myo<Esc>^D`y
nnoremap <F19><spc>K myO<Esc>^D`y

" == Bubble lines ==
nnoremap <silent>  myV:move '<-2<CR><Esc>`y
nnoremap <silent>  myV:move '>+1<CR><Esc>`y
vnoremap <silent>  :move '<-2<CR><Esc>gv
vnoremap <silent>  :move '>+1<CR><Esc>gv

" == Repeat last action ==
nnoremap a .

" == Indenting ==
"        maintain selection after indent/outdent
vnoremap < <gv
vnoremap > >gv
