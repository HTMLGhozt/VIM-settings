set nocompatible
filetype off

filetype plugin indent on
" 'syntax on' overrules custom lexical (syntax) highlighting with Vim's default.
" The if statement below was suggested by the vim documentaiton.
if !exists("g:syntax_on")
	colo moody              "set colorscheme
	syntax enable	          "turn on syntax highlighting
endif
set autoindent            "turns indentation on
set smartindent           "does the right indentation (mostly)
set number relativenumber "turn on line numbers and relative line numbers
set showcmd               "shows the last command entered
set lazyredraw            "redraw only when we need to.
set showmatch             "highlight matching with brackets [{()}]
set ruler                 "turn on column and line position
set tabstop=2		        "how many columns a tab counts for.
set wildignore+=*/tmp/*,*.swp,.DS_Store
set shiftwidth=2        "how many columns when using reindent operations
set expandtab		          "set tabs to spaces
set hlsearch              "highlight matches
set colorcolumn=80        "adds color column
highlight ColorColumn ctermbg=61 guibg=SlateBlue
autocmd FileType javascript JsPreTmpl

set history=100 	        "set history to remember the last 100 commands

"netrw settings
let g:netrw_banner = 0    "remove tree banner
let g:netrw_liststyle = 3 "netrw to tree like
let g:netrw_browse_split = 0 "netrw to open in previous window 
let g:netrw_altv = 1      "Open files to right
let g:netrw_winsize = 20  "Set netrw windowsize to 25%
let g:netrw_preview = 1   "Preview vertically

"Close netrw if it's the only buffer open
aug netrw_close
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw"|q|endif
aug END

"move lines up (ctrl+k) and down (ctrl+j)
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"Open/close netrw with comma + tab (I don't like this implementation)
nnoremap ,<Tab> :Lexplore<CR> 
