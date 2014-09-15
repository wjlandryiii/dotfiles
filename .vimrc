" filetype off
" execute pathogen#infect()
" execute pathogen#helptags()
filetype indent plugin on


set modelines=0
set nocompatible
set backspace=2
au BufWrite /private/tmp/crontab.* set nowritebackup
au BufWrite /private/etc/pw.* set nowritebackup

" Show trailing whitespace
" set list
" set listchars=trail:.

" easy indention for blocks
vnoremap < <gv
vnoremap > >gv

" line numbers
" remove with set nonumber
set number

syntax enable
set background=dark
" colorscheme solarized
set colorcolumn=80

" let g:syntastic_python_pylint_args = '--load-plugins pylint_django'





" Shows line and column number
set ruler

" hilights current line and column
set cursorline
set cursorcolumn
