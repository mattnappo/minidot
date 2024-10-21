syntax on
syntax enable

set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set formatoptions+=r
set hlsearch
set incsearch
set ruler
set encoding=utf-8
set virtualedit=block
set number
set autoindent
set autoread
set relativenumber
set ttimeoutlen=10 " Fix slow O
set mouse=a
filetype plugin indent on
set colorcolumn=80

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
" map <C-a> :NERDTreeRefresh<CR>\|:source ~/.config/nvim/init.vim<CR>\|:noh<CR>
map <C-b><C-x> :!cargo test<CR>
map <C-b><C-b> :!cargo run<CR>
map <C-b>:!cargo fmt<CR>

"set omnifunc=ale#completion#OmniFunc
"let g:ale_completion_enabled = 1
"let g:ale_completion_autoimport = 1
"let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
"inoremap <silent><expr><TAB>
"    \ pumvisible() ? “\<C-n>” : “\<TAB>”
nmap <silent> <F11> :ALEGoToDefinition<CR>
nmap <silent> <F12> :ALEFindReferences<CR>

call plug#begin('~/.vim/plugged')
" Themes
Plug 'arzg/vim-colors-xcode'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim'
Plug 'ntk148v/vim-horizon'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'kaicataldo/material.vim', { 'branch': 'main' } 
Plug 'romgrk/doom-one.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'davidosomething/vim-colors-meh'
Plug 'ku1ik/vim-monokai'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'Mofiqul/vscode.nvim'
Plug 'blazkowolf/gruber-darker.nvim'
Plug 'liuchengxu/space-vim-theme'

" Status lines
" Plug 'itchyny/lightline.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Language support
Plug 'pangloss/vim-javascript'
Plug 'rhysd/vim-llvm'
Plug 'rust-lang/rust.vim'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ron-rs/ron.vim'
Plug 'tbastos/vim-lua'
Plug 'elixir-editors/vim-elixir'
Plug 'justinmk/vim-syntax-extra'
Plug 'vim-python/python-syntax'
Plug 'bfrg/vim-cpp-modern'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'cstrahan/vim-capnp'
"Plug 'unisonweb/unison', { 'branch': 'trunk', 'rtp': 'editor-support/vim' }

" Other
Plug 'preservim/nerdtree'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
"Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf' 
Plug 'junegunn/fzf.vim'
Plug 'szw/vim-maximizer'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-sleuth'

call plug#end()

" Setup ALE for Rust
let g:ale_linters = {'rust': ['analyzer']}

" Set up tags
set tags=./tags,tags;

" Autosave for go and rust
let g:rustfmt_autosave = 1
let g:go_fmt_autosave = 1

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
" let g:NERDTreeHijackNetrw=0

" Configure status bar
" set laststatus=2
" set noshowmode


" Fix NERDTree annoyances
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" 2 spaces in OCaml
autocmd FileType ocaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" nice binds
"map <F3> :!<up><cr>
autocmd VimEnter * noremap <F3> :!<up><cr>
" Fix colors
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set t_Co=256
let g:rehash256 = 1
set background=dark

" tmux Italics
set t_ZH=[3m
set t_ZR=[23m

let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean'

let g:ale_c_cc_options = '-I/home/matt/git/csc256/mp1/lib'

"colorscheme material
colorscheme gruvbox-material
"colorscheme rose-pine-moon
"colorscheme catppuccin-frappe
"colorscheme catppuccin
"colorscheme vscode 
"colorscheme gruber-darker
"colorscheme space_vim_theme
" nice light themes are: xcodelight, vscode

