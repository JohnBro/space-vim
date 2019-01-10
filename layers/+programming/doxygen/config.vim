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

  function! s:Doxygen(type)
      let l:opt = {
                  \ 'author'  : 'DoxAuthor',
                  \ 'block'   : 'DoxBlock',
                  \ 'function': 'Dox',
                  \ 'license' : 'DoxLic',
                  \ }
      for [l:key, l:value ] in items(l:opt)
          if l:key == a:type
              exe l:value
          endif
      endfor
  endfunction

  nnoremap <leader>da :call s:Doxygen('author')<cr>
  nnoremap <leader>db :call s:Doxygen('block')<cr>
  nnoremap <leader>df :call s:Doxygen('function')<cr>
  nnoremap <leader>dl :call s:Doxygen('license')<cr>
" }