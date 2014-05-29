function! s:change_now(type)
	execute "normal! `[v`]c\<C-A>\<Esc>"
endfunction

nnoremap <Plug>(change-now) :<C-U>set operatorfunc=<SID>change_now<CR>g@

nmap cn <Plug>(change-now)
