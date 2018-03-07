set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')

" let Vundle manage itself
Plugin 'VundleVim/Vundle.vim'

Plugin 'pangloss/vim-javascript'
call vundle#end()
filetype plugin indent on
" 'syntax on' overrules custom lexical (syntax) highlighting with Vim's default.
" The if statement below was suggested by the vim documentaiton.
if !exists("g:syntax_on")
	colo moody              "set colorscheme
	syntax enable	          "turn on syntax highlighting
endif
set number relativenumber "turn on line numbers and relative line numbers
set showcmd               "shows the last command entered
set lazyredraw            "redraw only when we need to.
set showmatch             "highlight matching with brackets [{()}]
set ruler                 "turn on column and line position
set tabstop=2		          "how many columns a tab counts for.
set shiftwidth=2	        "how many columns when using reindent operations
set expandtab		          "set tabs to spaces

set history=100 	        "set history to remember the last 10 commands
