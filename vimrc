set nocompatible

filetype on
filetype plugin indent on
syntax on

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set lazyredraw
set showmatch
set incsearch
set hlsearch
set number
set ruler
set autoindent
set smartindent
set wildmenu
set laststatus=2
set cursorline
set showmode
set backspace=indent,eol,start
set mouse=a
set background=dark
set foldenable
set foldlevelstart=10
set foldmethod=indent

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
let mapleader=","

nnoremap <leader><space> :nohlsearch<CR>
nnoremap <space> za
map <Leader><Right> 10<C-w><<CR>
map <Leader><Down> 10<C-w>-<CR>
map <Leader><Up> 10<C-w>+<CR>
map <Leader><Left> 10<C-w>><CR>
map <Leader>= 10<C-w>=<CR>
map <Leader>s :%s/\s\+$//<CR>

nnoremap tt    :tabnew<CR>
nnoremap to    :tabonly<CR>
nnoremap tc    :tabclose<CR>
nnoremap tn    :tabnext<CR>
nnoremap tp    :tabprevious<CR>
nnoremap vs    :vsplit

set nocompatible
filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'elzr/vim-json'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on

let g:airline_theme="badwolf"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_symbols = {}

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:vim_markdown_folding_disabled = 1

"colorscheme gruvbox
"colorscheme jellybeans
"colorscheme 0x7A69_dark
"colorscheme BlackSea
"colorscheme SlateDark
colorscheme molokai_dark
