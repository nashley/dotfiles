:nnoremap <esc> :noh<return><esc>
filetype plugin on
filetype indent on
autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<CR>

" Tell Vim your background is dark and it should shift colors to make it easier to read
"set background=dark

" Enable vertical column of line numbers; useful for jumping to specific lines
set number

" Enable line,column information within status bar
set ruler

" Enable syntax color coding
syntax on

" Override default number of spaces that tabs are displayed as (8)
set shiftwidth=8
set tabstop=8

" Disable wrapping long lines
set nowrap

" Enable reading first/last N lines of file for vim modeline info to format file
set modelines=5

" Ignore case for search
set ignorecase

" Add shortcut for sudo saving
cmap w!! w !sudo tee > /dev/null %
