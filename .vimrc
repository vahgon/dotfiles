call plug#begin()
  let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
  if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
  Plug 'itchyny/lightline.vim'
  Plug 'wadackel/vim-dogrun'
  Plug 'tidalcycles/vim-tidal'

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

highlight Normal ctermbg=0 guibg=#000000
