function! TemplateInsert()
	0r $RTP/templates/template.cpp
	exec "normal 8GO"
	return
endfunction

function TrimWhiteSpace()
  	%s/\s*$//
  	''
endfunction

autocmd BufNewFile *.cpp call TemplateInsert()
autocmd BufWritePre * call TrimWhiteSpace()
