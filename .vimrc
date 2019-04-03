set nocompatible
filetype off

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

set history=100 	        "set history to remember the last 100 commands

let g:netrw_banner = 0    "remove tree banner
let g:netrw_liststyle = 3 "netrw to tree like
let g:netrw_browse_split = 4 "netrw to open in previous window 
let g:netrw_altv = 1      "Open to netrw to the left
let g:netrw_winsize = 25  "Set netrw windowsize to 25%

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

aug netrw_close
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw"|q|endif
aug END
