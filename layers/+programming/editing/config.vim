scriptencoding utf-8

" nerdcommenter {
	let g:NERDSpaceDelims            = 1
	let g:NERDComaptSexyComs         = 1
	let g:NERDAltDelims_java         = 1
	let g:NERDCommentEmptyLines      = 1
	let g:NERDDefaultAlign           = 'left'
	let g:NERDTrimTrailingWhitespace = 1
	let NERDCreateDefaultMappings    = 0

	nmap <Leader>;; <Plug>NERDCommenterToggle
	omap <Leader>;; <Plug>NERDCommenterToggle
	vmap <Leader>;; <Plug>NERDCommenterToggle
	nmap <Leader>;c <Plug>NERDCommenterComment
	omap <Leader>;c <Plug>NERDCommenterComment
	vmap <Leader>;c <Plug>NERDCommenterComment
	nmap <Leader>;u <Plug>NERDCommenterUncomment
	omap <Leader>;u <Plug>NERDCommenterUncomment
	vmap <Leader>;u <Plug>NERDCommenterUncomment
" }

" vim-multiple-cursors {
  let g:multi_cursor_use_default_mapping = 0
  let g:multi_cursor_start_word_key      = '<C-n>'
  let g:multi_cursor_select_all_word_key = '<A-n>'
  let g:multi_cursor_start_key           = 'g<C-n>'
  let g:multi_cursor_select_all_key      = 'g<A-n>'
  let g:multi_cursor_next_key            = '<C-n>'
  let g:multi_cursor_prev_key            = '<C-p>'
  let g:multi_cursor_skip_key            = '<C-x>'
  let g:multi_cursor_quit_key            = '<Esc>'
" }

" vim-swoop {
  " Do not let vim-swoop create keybindings
  let g:swoopUseDefaultKeyMap = 0
  " Visual selection mode mapping: swoop current selection.
  vmap <Plug>Search_F :call SwoopMultiSelection()<CR>
  nnoremap <Plug>Search_F :call Swoop()<CR>
  nnoremap <Plug>Search_M :call SwoopMulti()<CR>
  " Normal mode mapping:
  "   <Leader>ss to start swoop buffer.
  "   <Leader>sm to swoop in multiple buffers.
  vmap <leader>sf <Plug>Search_F
  nmap <leader>sf <Plug>Search_F
  nmap <leader>sm <Plug>Search_M
" }

" auto-pairs {
	" let g:AutoPairsShortcutFastWrap   = ""
	" let g:AutoPairsShortcutJump       = ""
	" let g:AutoPairsShortcutBackInsert = ""
	" let g:AutoPairsShortcutToggle     = ",t%"
" }
