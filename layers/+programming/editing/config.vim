scriptencoding utf-8

" nerdcommenter {
	let NERDCreateDefaultMappings    = 0
	let g:NERDSpaceDelims            = 1
	let g:NERDComaptSexyComs         = 1
	let g:NERDAltDelims_java         = 1
	let g:NERDCommentEmptyLines      = 1
	let g:NERDDefaultAlign           = 'left'
	let g:NERDTrimTrailingWhitespace = 1

	nmap <Leader>; <Plug>NERDCommenterToggle
	omap <Leader>; <Plug>NERDCommenterToggle
	vmap <Leader>; <Plug>NERDCommenterToggle
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
  vmap <Plug>SwoopSearch            :call SwoopMultiSelection()<CR>
  nnoremap <Plug>SwoopSearch        :call Swoop()<CR>
  nnoremap <Plug>SwoopMultiBuffers  :call SwoopMulti()<CR>
  " Normal mode mapping:
  "   <Leader>ss to start swoop buffer.
  "   <Leader>sm to swoop in multiple buffers.
  vmap <leader>ss <Plug>SwoopSearch
  nmap <leader>ss <Plug>SwoopSearch
  nmap <leader>sm <Plug>SwoopMultiBuffers
" }

" auto-pairs {
    " do not use <C-h> to delect
    let g:AutoPairsMapCh = 0
	let g:AutoPairsShortcutFastWrap   = ""
	let g:AutoPairsShortcutJump       = ""
	let g:AutoPairsShortcutBackInsert = ""
	let g:AutoPairsShortcutToggle     = '<Space>t%'
" }
