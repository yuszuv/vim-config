if exists("b:did_ftplugin")
	finish
endif
"let b:did_ftplugin = 1

imap <buffer> <S-CR> <CR><CR>end<ESC>-cc

setlocal shiftwidth=2
setlocal smartindent
setlocal softtabstop=2
setlocal tabstop=2
setlocal expandtab
