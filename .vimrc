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



set mouse=a
set clipboard=unnamedplus

map <C-s><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<dr>
map <C-t><right> :tabn<cr>
nnoremap <C-a> ggmqvG"+y'q

set nobackup
set noswapfile
set noundofile

"auto close {
function! s:CloseBracket()
let line = getline('.')
if line =~# '^\s*\(struct\|class\|enum\) '
return "{\<Enter>};\<Esc>O"
elseif searchpair('(', '', ')', 'bmn', '', line('.'))
" Probably inside a function call. Close it off.
return "{\<Enter>});\<Esc>O"
else
return "{\<Enter>}\<Esc>O"
endif
endfunction
inoremap <expr> {<Enter> <SID>CloseBracket()


nnoremap ,html :-1read $HOMEPATH/.vim/skeleton/html<CR>3jwf>a
nnoremap nn :w<CR>:!/usr/local/bin/node %<CR>




