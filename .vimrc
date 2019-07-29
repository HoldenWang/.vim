"
" _   _       _     _         __     ___
" | | | | ___ | | __| | ___ _ _\ \   / (_)_ __ ___
" | |_| |/ _ \| |/ _` |/ _ \ '_ \ \ / /| | '_ ` _ \
" |  _  | (_) | | (_| |  __/ | | \ V / | | | | | | |
" |_| |_|\___/|_|\__,_|\___|_| |_|\_/  |_|_| |_| |_|
"
"

set nocompatible  
set autoindent
set nu
set relativenumber
set cursorline
syntax enable
syntax on
set scrolloff=5
set showcmd
set wildmenu  
set ruler
set wrap
set ts=4                                                                                                            
set expandtab                                                                                        
set autoindent

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'connorholyday/vim-snazzy'
call plug#end()

map tt :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree
highlight Directory guifg=#191970 ctermfg=blue

"noremap W :wq<CR>
noremap Q :qa!<CR>

"color snazzy
"let ayucolor="light"
let g:SnazzyTransparent = 1
set background=dark

noremap J <nop>
nmap H <C-w>h
nmap J <C-w>j
nmap K <C-w>k
nmap L <C-w>l

"set t_Co=8
"set t_Sf=^[[3%p1%dm
"set t_Sb=^[[4%p1%dm
set t_Co=256
"set t_Sf=^[[3%dm
"set t_Sb=^[[4%dm
set splitright
set splitbelow
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map tm :tabe ~/.vimrc<CR>
map tn :tabe<CR>
map tc :tabclose<CR>
" map tn :tabn<CR> gT gt
