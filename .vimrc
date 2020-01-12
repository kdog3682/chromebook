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
set clipboard=unnamed

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
inoremap {<CR> {<CR><BS>}<Esc>ko

inoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a


" This makes it kind of hard actually to type abthings. Because for a small moment you won't see anything.

iab <expr> l( console.log
iab <expr> fs! const fs = require('fs')
iab <expr> * /*<CR><tab><CR><BS>*/<esc>kla


nnoremap cc Vypo
iab <expr> date! strftime("%b %d, %Y")




" nnoremap vv :set paste <CR>a

" nnoremap bb :set nopaste

function! GetSyntaxID()
    return synID(line('.'), col('.'), 1)
endfunction

function! GetSyntaxParentID()
    return synIDtrans(GetSyntaxID())
endfunction

function! GetSyntax()
    echo synIDattr(GetSyntaxID(), 'name')
    exec "hi ".synIDattr(GetSyntaxParentID(), 'name')
endfunction







hi Normal guibg=gray95
hi NonText guifg=gray95
hi FoldColumn guibg=gray95
hi CursorLine guibg=gray90
hi Title gui=bold guifg=gray25
hi MarkdownHeadingDelimiter gui=bold guifg=gray25
hi htmlSpecialChar guifg=black
hi markdownBold gui=bold guifg=gray25
hi markdownItalic guifg=gray25 gui=underline
hi markdownUrl guifg=#2fb3a6
hi markdownAutomaticLink guifg=#2fb3a6
hi markdownLinkText guifg=#317849
hi markdownUrlTitle guifg=#317849
hi markdownBlockquote guifg=#317849 gui=bold
hi markdownId guifg=#2fb3a6
hi markdownIdDeclaration guifg=#317849 gui=bold
hi markdownListMarker guifg=#317849
highlight Cursor guibg=#15abdd






func! Md_colors_setup()
    syn match Background /^.*\<background\>.*$/
    syn match Important /\<important\>/
    syn match HelloThere /^Hello there!\s*.*$/
    hi Background guibg=yellow ctermbg=yellow
    hi Important guifg=red ctermfg=red
    hi HelloThere guifg=blue ctermfg=yellow
endfunc

augroup COLORSCHEME_CHANGE | au!
    au bufread,bufnew *.md call Md_colors_setup()
augroup end

" Commenting blocks of code.
autocmd FileType javascript let b:comment_leader = '// '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


autocmd BufRead,BufNewFile *.vue setfiletype html




"iab {read, write, append, remove, size, birth} = require('util.js')

inoremap {<cr> {<cr>}<c-o>O
imap jj <Esc>
iabbrev @@ <-r>=expand('%:p')<cr>
nnoremap <Leader><Tab> :b#<CR>
nnoremap <BS> <C-^>
nmap gt :bnext<CR>
inoremap <C-J> <C-X><C-P>

nnoremap <TAB> :bn<CR>

nnoremap U <C-R>

" autosource vimrc
autocmd bufwritepost .vimrc source $MYVIMRC
map <leader>v :tabe $MYVIMRC<cr>





