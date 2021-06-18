function! MetaInsert()
	let line = getline(1)
	if line == "---"
		return
	endif
	let fn = expand('%:t:r')
	exec append(0, "")
	exec append(0, "\---")
	exec append(0, join(["title:", fn], " "))
	exec append(0, "\---")
	exec "normal G"
	return
endfunction

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
autocmd Filetype vimwiki call MetaInsert()
autocmd BufWritePre * call TrimWhiteSpace()
