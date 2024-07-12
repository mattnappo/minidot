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
set mouse=a
filetype plugin indent on
set colorcolumn=

" Switch to left pane map <C-t><down> :td<cr> " Bind ctrl-n to toggle NERDTree
map <C-n> :NERDTreeToggle<cr>

" Fzf search for file
map <C-p> :FzfFiles<CR>

" better pane movement
map <C-h> hzz
map <C-j> jzz
map <C-k> kzz
map <C-l> lzz
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-j>
nnoremap <C-K> <C-W><C-k>
nnoremap <C-L> <C-W><C-l>

set splitright
set splitbelow

" logical line moving
map j gj
map k gk

map <C-w>m :MaximizerToggle<cr>

" Remove highlighting shortcut
map <C-a> :NERDTreeRefresh<CR>\|:noh<CR>

call plug#begin('~/.vim/plugged')
" Themes
Plug 'Mofiqul/vscode.nvim'
Plug 'sainnhe/gruvbox-material'

" Language support
Plug 'rhysd/vim-llvm'
Plug 'rust-lang/rust.vim'

" Other
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf' 
Plug 'junegunn/fzf.vim'
Plug 'szw/vim-maximizer'
Plug 'preservim/nerdcommenter'

call plug#end()

" Autosave for go and rust
let g:rustfmt_autosave = 1
let g:ale_linters = {'rust': ['analyzer']}

" fzf config
let g:fzf_command_prefix = 'Fzf'
let g:fzf_layout=  { 'down': '~20%' }

" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
let NERDTreeShowHidden = 1

" Fix NERDTree annoyances
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" colorscheme gruvbox-material
colorscheme vim
