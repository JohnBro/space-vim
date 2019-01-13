scriptencoding utf-8

if has_key(g:plugs, 'vim-mucomplete')
  let g:mucomplete#enable_auto_at_startup = 1
  let g:mucomplete#no_mappings = 1
  inoremap <expr> <c-e> mucomplete#popup_exit("\<c-e>")
  inoremap <expr> <c-y> mucomplete#popup_exit("\<c-y>")
  inoremap <expr>  <cr> mucomplete#popup_exit("\<cr>")

  " Fix key mappings' clash from vim-better-default
  iunmap <c-j>
  iunmap <c-h>
endif

" :h completeopt
set completeopt=noinsert,menuone,noselect

call spacevim#vim#complete#Init()

if exists('g:spacevim_use_ncm2') || has("nvim-0.2.2") && has('python3')

elseif g:spacevim.vim8
  " completor.vim {
    let g:completor_clang_binary = '/usr/local/bin/clang'
  " }
else

endif
