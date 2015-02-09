"
" Titouan CREACH ~/.vimrc
" Epitech Rennes
" creach_a
"
set nocompatible

filetype on
filetype plugin on
filetype indent on

"read outside modifictions
set autoread

"256 colors terminal
let &t_Co=256

"mapleader = ","
let mapleader = ","
let g:mapleader = ","

"change dir if I open a file, very useful
set autochdir

"fast saving
nmap <leader>w :w!<CR>
nmap <leader>q :wqa!<CR>

"show cursor position
set ruler

"ignor case when searching
set ignorecase

"highlight search
set hlsearch

"show match bracklet
set showmatch

"no sound
set noerrorbells
set novisualbell
set t_vb=

"syntax coloring
"set background=dark
syntax enable

"colorscheme
colorscheme Tomorrow-Night

"french accents
set encoding=utf8

"no backup/swap file
set nobackup
set nowb
set noswapfile

"auto indent
set autoindent
set smartindent

"Change split keymap
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"show the cmd
set showcmd

"save cursor position for a future opening
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

"delete endlines trailings whitespaces
autocmd BufWrite *.py :%s/\s\+$//ge
autocmd BufWrite *.c :%s/\s\+$//ge
autocmd BufWrite *.cpp :%s/\s\+$//ge
autocmd BufWrite *.pas :%s/\s\+$//ge

"hightlight overlengths lines (80 chars)
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"completion with ctrl-space (like eclipse)
inoremap <Nul> <C-n>
inoremap <C-space> <C-n>

"tabs

"spaces are better
set expandtab
set tabstop=4
set shiftwidth=4

"like hard tabs
set softtabstop=4

"show line number
set number

"enable mouse
set mouse=a

"hightlight current line
set cursorline

"esc-esc for ctrl-z (jobs controle)
"not too slow
"
set timeoutlen=130
map <ESC><ESC> :wa!<CR><C-z>

"ahah
cmap Wq wq

"delete selected chars in visual mode
vnoremap <BS> d

" disable past if mod isn't insert
" 
au InsertLeave * set nopaste

set selection=exclusive

set lazyredraw

"keep 3 lines arround the cursor
set scrolloff=3

set modeline

"// stop current search
map // :nohlsearch<CR>

"python folding

"open a fold
nnoremap <space> za

"make a fold
vnoremap <space> zf

"remove a fold
nnoremap <BS> zd

"remember view
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

"manual folds 
set fdm=manual

"show folds
set foldcolumn=3

"if you use gvim
autocmd VimEnter * NERDTree
if has("gui_running")
    colorscheme solarized
    autocmd VimEnter * NERDTree
    set guifont=ProggyCleanTT\ 14
endif

"=============================================================================
" EPITECH SPECIFIC PLUGIN / NORME
"============================================================================

"Just uncomment this line if you would use this for epitech

"let g_epitech=1

function! GnuIndent()
  setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
  setlocal shiftwidth=2
  setlocal tabstop=8
endfunction

if exists("g_epitech")
    au FileType c,cpp call GnuIndent()
endif

