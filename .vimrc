


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
set guifont=Monaco:h13
set encoding=utf8
set ruler
set ignorecase                
set nolazyredraw
set nowritebackup
set splitright
let @q='<c-r><c-r>q' 


"'MY FILES
" vimrc
" abc
" today
" JANUARY
" :%s//bar/g
  

"------------------------------------- 
" inoremap 9 (
" inoremap 0 )
" inoremap <s-n> 9
" inoremap <s-z> 0





inoremap <c-pageup> <esc>ggO
inoremap <c-pagedown> <esc>Gz<cr>O


"------------------------------------- 
inoremap <down> <down>
inoremap <up> <up>

inoremap <s-left> <c-w>

nnoremap <leader>W :argadd ~/webdev/*

nnoremap <leader>A :argadd ~/today/*
nnoremap <leader>t :e ~/jsbin.txt<cr> 
nnoremap <leader>n :call RenameFile()<cr>
nnoremap gb :ls<CR>
nnoremap bd :bd<cr>
nnoremap ,0 :badd ~/abc.txt<cr>
inoremap {<CR> {<CR><BS>}<Esc>ko
inoremap <c-down> ;
inoremap <c-bs> <c-w>
inoremap <D-'> <esc>di'hPl2x
inoremap <A-'> <esc>ciw'<c-r>"'
nnoremap <leader>s :source ~/.vim/sessions/peachtree.vim
nnoremap <leader>s :source ~/.vim/sessions/peachtree.vim
nnoremap <leader>1 :e! ~/abc.txt<cr>
nnoremap <leader>a :e! ~/app.js<cr>
nnoremap <leader>v :e! $MYVIMRC<cr>

nnoremap <leader>c ^i" <esc>

"-------------------------------------------------------------------------- 
"Jan 15, 2020 -------------------------------------------------------------
"-------------------------------------------------------------------------- 
autocmd! bufwritepost $MYVIMRC source $MYVIMRC
" autocmd! bufwritepost ~/abc.txt source $MYVIMRC
"-------------------------------------------------------------FILE MANAGEMENT
nnoremap <s-tab> :bprevious!<cr>
nnoremap <tab> :bnext!<cr>
" nnoremap <f18> gt  
" inoremap <f18> <esc>:w<cr>
inoremap <f18> <esc>gtGa
nnoremap <f18> <esc>gtGa

inoremap <PageDown> <esc>:bprevious!<cr>ggO
nnoremap <PageDown> :bprevious!<cr>ggO
inoremap <PageUp> <esc>:bnext!<cr>ggO
nnoremap <PageUp> :bnext!<cr>ggO
"-------------------------------------------------------------------------- 
"split and close window.
nnoremap w <c-w>q
nnoremap s <c-w>s
"-----------------------------------------------------------------EDIT TEXT


"Pretty Useful"
iab fs! const fs = require('fs')
iab <expr> dd strftime("[%b %d, %Y]")
iab <expr> d! strftime("[Timestamp %H:%M:%S]")
iab asd This is a test sentence    !
iab br ------------------------------------------------------------------------
iab o: [Observations]



func! SetupColors() 
  syn match TITLE /^.*\:$/
  syn match TAG /^.*\:$/
  syn match HASH /^#[A-Z]*/
  syn match bullet /^-*/
  syn match MARK /.*\/.*/

  hi TITLE guifg=blue ctermfg=blue
  " hi TAG   guifg=blue ctermfg=blue
  " hi HASH  guifg=black ctermfg=magenta
  " hi bullet  guifg=red ctermfg=blue
  " hi MARK  guifg=green ctermfg=blue
endfunc

augroup COLORSCHEME_CHANGE | au!
  au bufread,bufnew *.txt call SetupColors()
augroup end

function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction

"----------------------- Tests. BEYOND ThiS POINT IS UNSAFE."
"
"
"
"bd bdelete, bw, bwipeout, q, 
" Sometimes a continuation of " runs, and sometimes it doesn't.
" :map + key tells you what shortcuts are being occupied. 
" :1,3bw deletes 1 and 3 buffers from the buffer list. It doesn't delete the file. 




" --------------------------------------Vim Plug
" call plug#begin('~/.vim/plugged')
" call plug#end()
" ----------------------------------------------
" nnoremap ,h :-1read $HOME/.vim/.skeleton.red<CR>3jwf>a       
" nnoremap ,vue :-1read $HOME/.vim/.skeleton.vue
" nnoremap ,vuep :-1read $HOME/.vim/.skeleton.vue
" nnoremap <down>r :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a
"
"
"
" Use right cmd + option to tab within a tab page. (internal)
" Use fn to tab between tabs. (external)
" There is also a way to toggle multiple screens.

" nnoremap <TAB> :bn!<CR> 
" map <leader>v :tabe $MYVIMRC<cr>
" map <leader>1 :tabe ~/documents/today.txt<cr>
" map <leader>3 :tabe ~/documents/app.js<cr>
" map <leader>2 :tabe ~/documents/catchallbuffer.txt<cr>
" map <leader>4 :tabe ~/app.js<cr>

" These settings are used with:
" Macbook Pro Karabiner Elements.
" CAPS_LOCK => ESC
" fn => down
" Right_CMD => page_up
" Right_OPT => page_down
" right_shift => f18
"
" Useful commands to run:
"
" :version
" :echo expand('~')
" :echo $HOME
" :echo $VIM
" :echo $VIMRUNTIME
" 
" Unused Settings:
" set filetype plugin indent on
" set showmatch
" :args ~/abc.txt | argdo tabe | tabdo syntax on
"
"
" Notes
" To uppercase: visual select + U
"
" (f18 is fn key) (down is right-shift)
" 
"
" Auto-open files.
" Install Snippets.
" nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
" nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
"--- the above is advanced tabbing. Not  entirely sure if I need it. 
"Don't use this. Snippets suck if they're hacked. Snippets have to be real. 
"inoremap ><Tab> ><Esc>F<lyt>o</<C-r>"><Esc>O<Space>

