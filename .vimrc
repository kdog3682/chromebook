syntax on 
autocmd! bufwritepost .vimrc source $MYVIMRC
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set showcmd
set showmatch
inoremap ;' <esc> 
inoremap l; <esc>
inoremap kl <esc>

let mapleader=","
" Automatically closing braces
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O




inoremap zz <esc>:w<cr>
iab ff function
iab hi console.log('hi')
nnoremap <leader>v :tabnew ~/.vimrc<cr>
nnoremap <leader>a :w<cr>:badd ~/app.js<cr>
nnoremap <leader>p :w<cr>:badd ~/parse.js<cr>
nnoremap <leader>u :e! ~/util.js<cr>
nnoremap <leader>0 :e! ~/code/uc.js<cr>
nnoremap <c-tab> :tabnext<cr>
nnoremap gb :ls<cr>
inoremap {<cr> {<cr>}<c-o>O
iabbrev @@ expand('%:p')<cr>
inoremap <C-J> <C-X><C-P>
nnoremap <TAB> :bn!<CR>
nnoremap U <C-R>
nnoremap <bs> gt
set autoindent
set smarttab
set smartindent

nnoremap <leader>d :<c-u>enew<bar>bd #<cr>


set mouse=a
set clipboard=unnamed

map <C-s><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<dr>
map <C-t><right> :tabn<cr>
nnoremap <C-a> ggVGda

set nobackup
set noswapfile
set noundofile

nnoremap mm :w<CR>:!/usr/local/bin/node %<CR>


inoremap {<CR> {<CR><BS>}<Esc>ko
inoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a



iab <expr> l( console.log
iab <expr> fs! const fs = require('fs')
iab <expr> * /*<CR><tab><CR><BS>*/<esc>kla


nnoremap cc Vypo
iab <expr> date! strftime("%b %d, %Y")

func! TXT_colors_setup()
  syn match Background /^#.*/
  syn match Important /\<important\>/
  syn match HelloThere /^Hello there!\s*.*$/
    hi Background guibg=yellow ctermbg=yellow
    hi Important guifg=red ctermfg=red
    hi HelloThere guifg=blue ctermfg=yellow
endfunc

augroup COLORSCHEME_CHANGE | au!
    au bufread,bufnew *.txt call TXT_colors_setup()
augroup end











