" These settings are used with:
" Macbook Pro Karabiner Elements.
" CAPS_LOCK => ESC
" fn => f19
" Right_CMD => page_up
" Right_OPT => page_down
" right_shift => f18


syntax on 
colorscheme delek
let mapleader=","
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set showcmd
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
set ignorecase                    "for regex searches.
set nolazyredraw
set nowritebackup
"set filetype plugin indent on
"set showmatch

iab fun function

nnoremap ,h :-1read $HOME/.vim/.skeleton.red<CR>3jwf>a       
nnoremap ,vue :-1read $HOME/.vim/.skeleton.vue
nnoremap ,vuep :-1read $HOME/.vim/.skeleton.vue


"Learn Vim the Hard Way Source Tricks -- Sourcing Tricks.
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC
"I hope this works. It seems to be working.
nnoremap qq <esc> :w <cr> :source $MYVIMRC<cr>kki

nnoremap <f19>r :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a



"Commenting blocks of code. This works.
map <leader>c ^i"


"Pretty Useful"
nnoremap <TAB> :bn!<CR> 
map <leader>v :tabe $MYVIMRC<cr>
map <leader>1 :tabe ~/documents/today.txt<cr>
map <leader>3 :tabe ~/documents/app.js<cr>
map <leader>2 :tabe ~/documents/catchallbuffer.txt<cr>
map <leader>4 :tabe ~/app.js<cr>
  

inoremap ; :
inoremap <f19> ;
inoremap <left> <esc>diwa



inoremap {<CR> {<CR><BS>}<Esc>ko



iab fs! const fs = require('fs')
iab <expr> date! strftime("%b %d, %Y")
iab asd This is a test sentence    !
iab br -------------------------------------

" Make sure you use single quotes
call plug#begin('~/.vim/plugged')
call plug#end()


func! SetupColors() 
  syn match TAG /^.*\:$/ 
  hi TAG guifg=blue ctermfg=blue
endfunc

augroup COLORSCHEME_CHANGE | au!
  au bufread,bufnew *.txt call SetupColors()
augroup end

func! OpenFiles() 
  :tabnew 'abc.js'
endfunc


"------------ Tests. BEYOND THIS POINT IS UNSAFE."
"
"
" Normal Mode Availables
" <bs>
" nmap gt :bnext<CR> same as the current <TAB> activation.
"
"
"
"
"
"


