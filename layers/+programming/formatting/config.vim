" Autoformat {
  nnoremap <LocalLeader>= :Autoformat<CR>
" }

" Doxygen {
  let g:doxygen_enhanced_color           = 1
  let g:DoxygenToolkit_commentType       = "C"
  let g:DoxygenToolkit_briefTag_funcName = "yes"
  let g:DoxygenToolkit_dataTag           = "@data    "
  let g:DoxygenToolkit_briefTag_pre      = "@fn      "
  let g:DoxygenToolkit_briefTag_post     = "@brief   "
  let g:DoxygenToolkit_paramTag_pre      = "@param[] "
  let g:DoxygenToolkit_returnTag         = "@retval  "
  let g:DoxygenToolkit_versionTag        = "@version "
  let g:DoxygenToolkit_authorName        = "JohnBro lujunboo@gmail.com"
  let g:DoxygenToolkit_blockHeader       = "--------------------------------------------------------------------------"
  let g:DoxygenToolkit_blockFooter       = "--------------------------------------------------------------------------"

  nnoremap <leader>xda :DoxAuthor<cr>
  nnoremap <leader>xdb :DoxBlock<cr>
  nnoremap <leader>xdf :Dox<cr>
  nnoremap <leader>xdl :DoxLic<cr>
" }
