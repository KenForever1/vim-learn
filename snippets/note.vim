" record some vimL code snippets

" see file path of current file
" use function expand()
:echo @%                |" directory/name of file
:echo expand('%:t')     |" name of file ('tail')
:echo expand('%:p')     |" full path
:echo expand('%:p:h')   |" directory containing file ('head')

" use function fnamemodify()
if argc() == 1 && fnamemodify(argv (0), ':e') == 'txt'
	 call ...
elseif  strlen(v:servername) > 0
	 call ...
endif
