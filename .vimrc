syntax on
syntax enable

set tabstop=4
set expandtab
set shiftwidth=4
set backspace=indent,eol,start
set noautoindent
set formatoptions+=r
set hlsearch
set incsearch
set ruler
set encoding=utf-8
set virtualedit=block
set number
set relativenumber
set ttimeoutlen=10
set mouse=
filetype plugin indent on
set colorcolumn=80

set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

" better pane movement
map <C-h> hzz
map <C-j> jzz
map <C-k> kzz
map <C-l> lzz
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-j>
nnoremap <C-K> <C-W><C-k>
nnoremap <C-L> <C-W><C-l>

map j gj
map k gk

set splitright
set splitbelow

autocmd StdinReadPre * let s:std_in=1

colorscheme default

" fix colors
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set t_Co=256
let g:rehash256 = 1
set background=dark

" tmux italics
set t_ZH=^[[3m
set t_ZR=^[[23m
