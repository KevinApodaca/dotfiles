call plug#begin('~/.vim/plugged')
Plug 'drewtempelmeyer/palenight.vim'
Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-python/python-syntax'
Plug 'tpope/vim-surround'
call plug#end()
"Theme Configuration
set background=dark
colorscheme palenight

let g:lightline = { 'colorscheme': 'palenight' }
let g:palenight_terminal_italics=1
"Simple Configuration
syntax on
set tabstop=4
set softtabstop=4
set expandtab

"UI Configuration
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
set nu
set showcmd
set cursorline
set wildmenu
set showmatch

"Searching Configuration
set incsearch
set hlsearch

"Folding Configuration
set foldenable

"NERDTree
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
