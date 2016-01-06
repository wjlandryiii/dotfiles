highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * match ExtraWhitespace /\s\+$/
autocmd WinEnter * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd WinEnter * match ExtraWhitespace /\s\+$/
autocmd WinLeave * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd WinLeave * match ExtraWhitespace /\s\+$/

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
set relativenumber

syntax enable
" set background=dark
" colorscheme peachpuff
" set colorcolumn=80
" color torte

" let g:syntastic_python_pylint_args = '--load-plugins pylint_django'





" Shows line and column number
set ruler

" hilights current line and column
set cursorline
" set cursorcolumn

" highlight searches
set hlsearch

colorscheme molokai

set colorcolumn=80
set cursorcolumn
