function! s:change_now(type)
	if a:type ==# "line"
		execute "normal! '[V']c\<C-A>\<Esc>"
	else
		execute "normal! `[v`]c\<C-A>\<Esc>"
	endif
endfunction

function! s:create_map(mode, lhs, rhs)
	if !hasmapto(a:rhs, a:mode)
		execute a:mode.'map '.a:lhs.' '.a:rhs
	endif
endfunction

nnoremap <silent> <Plug>(change-now) :<C-U>set operatorfunc=<SID>change_now<CR>g@
nnoremap <silent> <Plug>(change-now-line) :<C-U>set operatorfunc=<SID>change_now<CR>g@_

if exists('g:nowchangethat_no_mappings')
	finish
endif

call s:create_map('n', 'c.', '<Plug>(change-now)')
call s:create_map('n', 'c..', '<Plug>(change-now-line)')
