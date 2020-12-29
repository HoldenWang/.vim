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

" Uncomment the following to have Vim jump to the last position when       
" reopening a file                                                         
if has("autocmd")                                                          
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif                                                        
endif 
” 自动切换目录，便于向上查找tags文件
set autochdir
" set tags files locations
set tags+=/usr/lib/python3.6/tags,tags;
" run ctags command to product tags file
map <C-r> :call Go_top()<CR>:!ctags -R $(pwd)<CR><CR>:call Go_curr()<CR>
func! Go_top()
" 回到项目的top目录
    wall
    let g:Curr_dir=getcwd()
    let i = 1
    while i<10
        if filereadable("README.md")
            return
        else
            cd ..
            let i += 1
        endif
    endwhile
    exec 'cd'.g:Curr_dir
    ":!ctags -R '.g:Curr_dir
    return g:Curr_dir
endfunc

func! Go_curr()
    " 回到当前目录
    exec 'cd'.g:Curr_dir
endfunc
" 自动折叠python代码
set foldmethod=indent
nnoremap <space> za
vnoremap <space> zf
