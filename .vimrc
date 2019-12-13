syntax on 
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





set autoindent
set smarttab
set smartindent


set mouse=a
set clipboard=unnamedplus

map <C-s><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<dr>
map <C-t><right> :tabn<cr>
nnoremap <C-a> ggVGYGo<ESC>pGo<CR>

set nobackup
set noswapfile
set noundofile

nnoremap nn :w<CR>:!/usr/local/bin/node %<CR>



"auto close {
"function! s:CloseBracket()
"    let line = getline('.')
"    if line =~# '^\s*\(struct\|class\|enum\) '
"        return "{\<Enter>};\<Esc>O"
"    elseif searchpair('(', '', ')', 'bmn', '', line('.'))
        " Probably inside a function call. Close it off.
"        return "{\<Enter>});\<Esc>O"
"    else
"        return "{\<Enter>}\<Esc>O"
"    endif
"endfunction
"inoremap <expr> {<Enter> <SID>CloseBracket()


"noremap { {}<ESC>ha
inoremap { {<CR><BS>}<Esc>ko

inoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a


" This makes it kind of hard actually to type abthings. Because for a small moment you won't see anything.
inoremap abc {---}<space> 

iab log console.log
iab fs! const fs = require('fs')
iab * /*<CR><tab><CR><BS>*/<esc>kla









