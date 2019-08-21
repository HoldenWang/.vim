"
" _   _       _     _         __     ___
" | | | | ___ | | __| | ___ _ _\ \   / (_)_ __ ___
" | |_| |/ _ \| |/ _` |/ _ \ '_ \ \ / /| | '_ ` _ \
" |  _  | (_) | | (_| |  __/ | | \ V / | | | | | | |
" |_| |_|\___/|_|\__,_|\___|_| |_|\_/  |_|_| |_| |_|
"
"

" basic
set nocompatible  
set nu
set relativenumber
set cursorline
set cursorcolumn
syntax enable
syntax on
set scrolloff=5
set showcmd
set wildmenu  
set ruler
set wrap

" indent 
set tabstop=4                                                                                                            
set softtabstop=4
set shiftwidth=4
set expandtab                                                                                        
set smarttab
set smartindent  "set autoindent "will confuse the paste rel
" 显示tab和行尾的空格
set list
set listchars=tab:>-,trail:-

" search
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

" plug
"let mapleader='\' " default is '\'
call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'scrooloose/nerdtree'
    Plug 'connorholyday/vim-snazzy'
    Plug 'majutsushi/tagbar', { 'off': 'TagbarOpenAutoClose' }
call plug#end()

map tt :NERDTreeToggle<CR>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>t :TagbarToggle<CR>
nmap <Leader>c :color snazzy<CR>
nmap <Leader>q :qa!<CR>
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

" adapt to nogui vim
"set t_Co=8
"set t_Sf=^[[3%p1%dm
"set t_Sb=^[[4%p1%dm
set t_Co=256
"set t_Sf=^[[3%dm
"set t_Sb=^[[4%dm

" split 
set splitright
set splitbelow
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
" tab
nmap tm :tabe $MYVIMRC<CR>
"nmap tm :tabe ~/.vimrc<CR>
nmap tn :tabe<CR>
nmap tc :tabclose<CR>
nmap so :source $MYVIMRC<CR>
"autocmd BufWritePost $MYVIMRC source $MYVIMRC "让vimrc配置变更立即生效'
set paste
" map tn :tabn<CR> gT gt
"
set showmatch  "高亮显示(set noshowmatch不显示){, }, (, ), [, 或者 ] 的匹配情况
