
set number

"set TAB into 4x spaces 
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

set hlsearch
set ignorecase
syntax on

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
