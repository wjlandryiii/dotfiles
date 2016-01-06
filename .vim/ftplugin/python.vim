set list
set listchars=trail:.


" column width of a tab
set tabstop=4
" used with reindent operators (<< and >>)
set shiftwidth=4
" converts tabs to spaces
set expandtab

" treat 4 spaces as tabs
set softtabstop=4


" http://vim.wikia.com/wiki/Python_-_check_syntax_and_run_script
set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"

set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
nmap <F5> :!python %<CR>
