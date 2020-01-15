
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
set ignorecase                
set nolazyredraw
set nowritebackup
set splitright
let @q='<c-r><c-r>q' 


'
"'MY FILES
" vimrc
" abc
" today
" JANUARY

" TODO
" Click on a word and it gets quotes around it. In-progress.
" Auto-open files.
" Install Snippets.
" nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
" nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
"--- the above is advanced tabbing.

"Don't use this. Snippets suck if they're hacked. Snippets have to be real. 
"inoremap ><Tab> ><Esc>F<lyt>o</<C-r>"><Esc>O<Space>
nnoremap gb :ls<CR>
nnoremap bd :bd<cr>
nnoremap ,0 :badd ~/abc.txt<cr>
inoremap {<CR> {<CR><BS>}<Esc>ko
inoremap ; :
inoremap <c-f19> ;
inoremap <c-bs> <c-w>
inoremap <s-f19> <esc>di'hPl2x
inoremap <f19> <esc>ciw'<c-r>"'
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
"save it. Not necessay, just use default save."
inoremap ww <esc>:w<cr>i
inoremap <s-:> ;

inoremap <PageDown> <esc>:bprevious!<cr>ggOi
nnoremap <PageDown> :bprevious!<cr>ggOi
inoremap <PageUp> <esc>:bnext!<cr>ggOi
nnoremap <PageUp> :bnext!<cr>ggOi
"-------------------------------------------------------------------------- 
"split and close window.
nnoremap w <c-w>q
nnoremap s <c-w>s
"-----------------------------------------------------------------EDIT TEXT


"Pretty Useful"
iab fs! const fs = require('fs')
iab <expr> date! strftime("%b %d, %Y")
iab asd This is a test sentence    !
iab br -------------------------------------

func! SetupColors() 
  syn match TITLE /^.*\:$/
  syn match TAG /^.*\:$/
  syn match HASH /^#[A-Z]*/
  syn match DASH /^-*/

  hi TITLE guifg=blue ctermfg=blue
  hi TAG guifg=blue ctermfg=blue
  hi HASH guifg=blue ctermfg=blue
  hi DASH guifg=blue ctermfg=blue
endfunc

augroup COLORSCHEME_CHANGE | au!
  au bufread,bufnew *.txt call SetupColors()
augroup end

"----------------------- Tests. BEYOND THIS POINT IS UNSAFE."
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
" nnoremap <f19>r :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a
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
" fn => f19
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
" (f18 is fn key) (f19 is right-shift)
" iab zx abdcabdc 
" 
"

