function! spacevim#autocmd#youcompleteme#Init()
  let g:ycm_global_ycm_extra_conf              = g:spacevim_plug_home . '/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
  let g:ycm_error_symbol                       = '✖'
  let g:ycm_warning_symbol                     = '⚠ '
  let g:ycm_cache_omnifunc                     = 0
  let g:ycm_complete_in_strings                = 1
  let g:ycm_complete_in_comments               = 1
  let g:ycm_seed_identifiers_with_syntax       = 1
  let g:ycm_min_num_of_chars_for_completion    = 2
  let g:ycm_min_num_identifier_candidate_chars = 2
  " ycm_path_to_python_interpreter is important!
  let g:ycm_path_to_python_interpreter                    = 'python'
  let g:ycm_autoclose_preview_window_after_completion     = 1
  let g:ycm_collect_identifiers_from_tags_files           = 1
  let g:ycm_collect_identifiers_from_comments_and_strings = 0
  let g:ycm_add_preview_to_completeopt                    = 0
  let g:ycm_show_diagnostics_ui                           = spacevim#load('syntax-checking') ? 0 : 1
  let g:ycm_key_invoke_completion                         = '<C-z>'
  let g:ycm_key_detailed_diagnostics                      = ''

  " automatically trigger semantic completion after typing 2 character in files
  let g:ycm_semantic_triggers = {
                \   'c'      : ['->', '.', 're!\w{3}'],
                \   'objc'   : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s', 're!\[.*\]\s'],
                \   'ocaml'  : ['.', '#'],
                \   'cpp,cuda,objcpp' : ['->', '.', '::', 're!\w{3}'],
                \   'perl'   : ['->'],
                \   'php'    : ['->', '::'],
                \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
                \   'ruby'   : ['.', '::'],
                \   'lua'    : ['.', ':'],
                \   'erlang' : [':'],
                \ }

  let g:ycm_filetype_blacklist = {
                \ 'tagbar' : 1,
                \ 'nerdtree' : 1,
                \ 'markdown' : 1,
                \ 'unite' : 1,
                \ 'text' : 1,
                \ 'csv' : 1,
                \}

  call spacevim#vim#complete#Init()

  augroup spacevimYcm
    autocmd!
    " Enable omni completion.
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
    autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

    " Key bindings
    autocmd FileType c,cpp,python,go,javascript,rust
                \   nnoremap <LocalLeader>gd :YcmCompleter GoTo<CR>
    autocmd FileType c,cpp,python,rust,javascript,typescript
                \   nnoremap <LocalLeader>gD :YcmCompleter GetDoc<CR>
    autocmd FileType c,cpp
                \   nnoremap <LocalLeader>gi :YcmCompleter GoToInclude<CR>
    autocmd FileType javascript,python,typescript
                \   nnoremap <LocalLeader>gr :YcmCompleter GoToReferences<CR>
    autocmd FileType c,cpp,javascript,typescript
                \   nnoremap <LocalLeader>gt :YcmCompleter GetType<CR>
    autocmd FileType c,cpp
                \   nnoremap <LocalLeader>gp :YcmCompleter GetParent<CR>
  augroup END

endfunction
