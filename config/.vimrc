" Using these plugins:
" Pathogen https://github.com/tpope/vim-pathogen
" Enhanced JS syntax https://github.com/pangloss/vim-javascript
" Luna-term syntax https://github.com/notpratheek/vim-luna
" Airline https://github.com/vim-airline/vim-airline
" Airline themes https://github.com/vim-airline/vim-airline-themes
" NERDtree https://github.com/scrooloose/nerdtree
" Fugitive https://github.com/tpope/vim-fugitive

" Set runtime path manipulation - vim plugin Pathogen
execute pathogen#infect()

" Security
set modelines=0

" Show line numbers
set number

" Encoding
set encoding=utf-8

" Misc settings
set hidden
set visualbell
set nobackup
set noswapfile
set noshowmode

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

" Show invisibles (tabs & trailing spaces) & their highlight color
set list listchars=tab:»\ ,trail:·

" Configure spell checking
nmap <silent> <leader>p :set spell!<CR>
set spelllang=en_us

" Overrides terminal color terminal settings, just in case
set t_Co=256

" Set colorscheme
filetype plugin indent on
syntax enable
colorscheme luna-term

" Strip whitespace on save - shoutout https://github.com/keiththomps
fun! <SID>StripTrailingWhitespaces()
    " save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfun

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
