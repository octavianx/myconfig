" This is under managment of  github repo now
" https://github.com/octavianx/myconfig


""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示行号
set number
set ruler
set showcmd         " Show (partial) command in status line.



syntax on
" 设置tab输入时替换成4个空格进入，同时删除TAB的步进也是4个 set TAB into 4x spaces 
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" 设置退格键的作用
set backspace=indent,eol,start

""""""""""""""""""""""""""""""""""""""""""""""""""""

" " Maximum width of text that is being inserted. A longer
" line will be broken after white space to get this width.
set textwidth=79 

set showmatch 

set formatoptions=c,q,r,t 
                    " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)

""""""""""""""""""""""""""""""""""""""""""""""""""""

"设置高亮检索，检索时候自动增长匹配
set hlsearch
set incsearch

" 设置默认进行大小写不敏感查找
set ignorecase
" 如果有一个大写字母，则切换到大小写敏感查找
set smartcase 

autocmd cursorhold * set nohlsearch
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>

nnoremap <space> :call DisableHighlight()<cr>
function! DisableHighlight()
    set nohlsearch
endfunc



set guicursor=i:block-iCursor-blinkon0,v:block-vCursor


set backspace=indent,eol,start

"automatic recovery to last cursor position

"au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif   


"set nocompatible              " required
"filetype off                  " required

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'gmarik/Vundle.vim'
"call vundle#end()            " required
"filetype plugin indent on    " required


"nnoremap <C-J> <C-W><C-J>

"Mac OS specified clipboard usage
set clipboard=unnamed
