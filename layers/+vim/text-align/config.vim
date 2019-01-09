" tabular {
	nnoremap <Plug>AlignWith&     :Tabularize /&<CR>
	vnoremap <Plug>AlignWith&     :Tabularize /&<CR>
	nnoremap <Plug>AlignWith=     :Tabularize /^[^=]*\zs=<CR>
	vnoremap <Plug>AlignWith=     :Tabularize /^[^=]*\zs=<CR>
	nnoremap <Plug>AlignWith=>    :Tabularize /=><CR>
	vnoremap <Plug>AlignWith=>    :Tabularize /=><CR>
	nnoremap <Plug>AlignWith:     :Tabularize /:<CR>
	vnoremap <Plug>AlignWith:     :Tabularize /:<CR>
	nnoremap <Plug>AlignWith::    :Tabularize /:\zs<CR>
	vnoremap <Plug>AlignWith::    :Tabularize /:\zs<CR>
	nnoremap <Plug>AlignWith,     :Tabularize /,<CR>
	vnoremap <Plug>AlignWith,     :Tabularize /,<CR>
	nnoremap <Plug>AlignWith,,    :Tabularize /,\zs<CR>
	vnoremap <Plug>AlignWith,,    :Tabularize /,\zs<CR>
	nnoremap <Plug>AlignWith<Bar> :Tabularize /<Bar><CR>
	vnoremap <Plug>AlignWith<Bar> :Tabularize /<Bar><CR>
" }

" vim-easy-align {
	" Start interactive EasyAlign in visual mode (e.g. vipxa)
	xmap <Plug>AlignWith? <Plug>(EasyAlign)
	" Start interactive EasyAlign for a motion/text object (e.g. xaip)
	nmap <Plug>AlignWith? <Plug>(EasyAlign)<cr>
" }
