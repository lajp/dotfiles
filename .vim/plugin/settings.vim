filetype plugin indent on
syntax on
set backspace=indent,eol,start
set hidden          " Allow hidden buffers
set clipboard=unnamed " To get clipboard working
set noerrorbells
set noswapfile
set smartindent
set undodir=~/.vim/undodir
set nohlsearch
set path=.,**
set number
set rnu
set nowrap
set smartindent
set expandtab
set smartindent
set shiftwidth=4
set tabstop=4
set iskeyword-=_

let $RTP=split(&runtimepath, ',')[0]
let $RC="$HOME/.vim/vimrc"

let g:c_syntax_for_h = 1
