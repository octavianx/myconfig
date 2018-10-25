
set nocompatible              " required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Yggdroot/indentLine'
call vundle#end()            " required
filetype plugin indent on    " required


" This is under managment of  github repo now
" https://github.com/octavianx/myconfig

"" 全局的UTF-8 encoding

setglobal termencoding=utf-8 fileencodings=
scriptencoding utf-8

highlight Comment term=bold ctermfg=white


set clipboard=unnamed

""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示行号
set number
set ruler
set showcmd         " Show (partial) command in status line.

"在超过79个字符的行，显示一个洋红色的背景色色块
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn','\%80v', 100)


syntax on
" 设置tab输入时替换成4个空格进入，同时删除TAB的步进也是4个 set TAB into 4x spaces 
" set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

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


"设置高亮检索，检索时候自动增长匹配
set hlsearch
set incsearch

" 设置默认进行大小写不敏感查找
set ignorecase
" 如果有一个大写字母，则切换到大小写敏感查找
set smartcase 

highlight clear Search
highlight       Search    ctermfg=White

"====[ Set background hint (if possible) ]=============

"if $VIMBACKGROUND != ""
"    exec 'set background=' . $VIMBACKGROUND
"else
"    set background=dark
"endif

set background=dark





set backspace=indent,eol,start

"automatic recovery to last cursor position  自动进入到上一次打开本文件的行
autocmd BufReadPost *  if line("'\"") > 1 && line("'\"") <= line("$")
                   \|     exe "normal! g`\""
                   \|  endif


set pastetoggle=<F9>




" some tricks from OSCON , by damian Conway
"
" 1- highligh the 80th column
"
"在超过79个字符的行，显示一个洋红色的背景色色块
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn','\%80v', 100)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" "
" 2- hlsearch, while multiple match spots, it is hard to find where the cursor

    exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
    set list


" Make naughty characters visible...
" (uBB is right double angle, uB7 is middle dot)
set lcs=tab:⇒·,trail:␣,nbsp:~"
highlight InvisibleSpaces ctermfg=Black ctermbg=Black
call matchadd('InvisibleSpaces', '\s\+\%#', 100)

