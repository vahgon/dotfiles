call plug#begin()
    Plug 'itchyny/lightline.vim'
    Plug 'wadackel/vim-dogrun'
call plug#end()

set laststatus=2
syntax on
set ruler
set number
set relativenumber
set cmdheight=1
set noerrorbells
set showmatch
set mat=3

set ignorecase
set hlsearch
set magic
set regexpengine=0

filetype plugin indent on
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai
set wrap

colorscheme dogrun
set background=dark
let g:lightline = {
  \ 'colorscheme': 'dogrun',
  \ }
highlight Normal ctermbg=0 guibg=#000000
