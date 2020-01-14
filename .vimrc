syntax on 
colorscheme delek
let mapleader=","
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set showcmd
"set showmatch
set autoindent
set smarttab
set smartindent
set mouse=a
set clipboard=unnamed
set nobackup
set noswapfile
set noundofile
set guifont=Monaco:h11
set encoding=utf8
set ruler

"set filetype plugin indent on

"Learn Vim the Hard Way Source Tricks -- Sourcing Tricks.
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap ; :
inoremap <left> <esc>diwa



" Commenting blocks of code.
map <leader>c ^i"
map <leader>s :source $MYVIMRC<cr>


"Pretty Useful"
nnoremap <TAB> :bn!<CR> 
map <leader>v :tabe $MYVIMRC<cr>

  


"not sure about this one.
"inoremap {<cr> {<cr>}<c-o>O
inoremap {<CR> {<CR><BS>}<Esc>ko



iab fs! const fs = require('fs')
iab <expr> date! strftime("%b %d, %Y")
iab asd This is a test sentence    !
iab br -------------------------------------



"------------ Tests. Beyond this point is unsafe and unsaved.
" Normal Mode Availables
" <bs>
" nmap gt :bnext<CR> same as the current <TAB> activation.

"
"
" This is a test 
"
"
" 
"

