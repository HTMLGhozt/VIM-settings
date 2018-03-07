if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/thomas/.config/nvim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/thomas/./.vim/bundle'
let g:dein#_runtime_path = '/Users/thomas/./.vim/bundle/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/thomas/./.vim/bundle/.cache/init.vim'
let &runtimepath = '/Users/thomas/.config/nvim,/etc/xdg/nvim,/Users/thomas/.local/share/nvim/site,/usr/local/share/nvim/site,/Users/thomas/.config/nvim/bundle/YouCompleteMe/,/Users/thomas/.config/nvim/bundle/.neobundle,/usr/share/nvim/site,/Users/thomas/./.vim/bundle/repos/github.com/Shougo/dein.vim,/Users/thomas/./.vim/bundle/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.2.2_1/share/nvim/runtime,/Users/thomas/./.vim/bundle/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/thomas/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/thomas/.config/nvim/after,/Users/thomas/.config/nvim/bundle/neobundle.vim/,/Users/thomas/.config/nvim/'
filetype off
