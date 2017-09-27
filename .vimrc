let mapleader="\<space>"
"nmap <Space> <leader>
set timeoutlen=150
set relativenumber

" == EasyMotion ==
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
map <space>f <Plug>(easymotion-s)

" prevent ctrl space from interfering
nnoremap <c-space> <nop>

inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>

noremap <c-z> <undo>
inoremap <c-z> <Esc><undo>i
noremap <c-r> <c-R>
inoremap <c-r> <Esc><c-R>i

" == Visual mode ==
nnoremap s v
vnoremap s v
nnoremap S V
vnoremap S V

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

" == Next/Previous Occurance ==
noremap h n
noremap H N
" clear highlighted search
nnoremap <esc> :noh<return><esc>

" == Find/Till ==
noremap y f
onoremap y f
vnoremap y f
noremap Y F
vnoremap Y F
onoremap Y F

" == Insert/Append ==
nnoremap n i
nnoremap N I
nnoremap m a
nnoremap M A
noremap <leader>m a<Space><Esc>
noremap <leader>n i<Space><Esc>

" == Change ==
noremap f c
vnoremap f c

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
" == WORD-wise movements ==
noremap U gE
noremap I B
noremap O E
noremap P W

" == Move within a line ==
nnoremap gj ^
nnoremap g; g_
nnoremap gJ 0
nnoremap g: $

onoremap gj ^
onoremap g; g_
onoremap gJ 0
onoremap g: $

" == Move within file (begin/end) ==
nnoremap gk gg
nnoremap gl G
onoremap gk gg
onoremap gl G

" == Insert on line above/below ==  
nnoremap <leader>l o
nnoremap <leader>k O

" == Prepend/Append newline to current line ==
nnoremap <leader>L myo<Esc>`y
nnoremap <leader>K myO<Esc>`y

" == Bubble lines ==
nnoremap <c-space><c-k> myV:move '<-2<CR><Esc>`y
nnoremap <c-space><c-l> myV:move '>+1<CR><Esc>`y
vnoremap <c-space><c-k> :move '<-2<CR><Esc>gv
vnoremap <c-space><c-l> :move '>+1<CR><Esc>gv

" == Marks ==
" should be remapped to shift-number
nnoremap e m
