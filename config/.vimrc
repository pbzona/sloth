" Using these plugins:
" Pathogen https://github.com/tpope/vim-pathogen
" Enhanced JS syntax https://github.com/pangloss/vim-javascript
" Luna-term syntax https://github.com/notpratheek/vim-luna
" Airline https://github.com/vim-airline/vim-airline
" Airline themes https://github.com/vim-airline/vim-airline-themes
" NERDtree https://github.com/scrooloose/nerdtree
" Fugitive https://github.com/tpope/vim-fugitive

" Security
set modelines=0

" Show line numbers
set number

" Encoding
set encoding=utf-8

" Set runtime path manipulation - vim plugin Pathogen
execute pathogen#infect()

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=8
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab
set noshiftround

" Overrides terminal color terminal settings, just in case
set t_Co=256

" Set colorscheme
filetype plugin indent on
syntax enable
colorscheme luna-term

" Set Airline theme
let g:airline_theme='powerlineish'
set laststatus=2

" NERDtree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:mustache_abbreviations = 1
