function! s:change_now(type)
	if a:type ==# "line"
		execute "normal! '[V']c\<C-A>\<Esc>"
	else
		execute "normal! `[v`]c\<C-A>\<Esc>"
	endif
endfunction

nnoremap <silent> <Plug>(change-now) :<C-U>set operatorfunc=<SID>change_now<CR>g@

nmap c. <Plug>(change-now)
