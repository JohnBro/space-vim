" From coc.nvim
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! spacevim#vim#complete#Init()
  set completeopt=menuone,longest,preview

  inoremap <expr> <CR>       spacevim#vim#complete#CR()
  inoremap <expr> <Down>     spacevim#vim#complete#Down()
  inoremap <expr> <Up>       spacevim#vim#complete#Up()
  inoremap <expr> <PageDown> spacevim#vim#complete#PageDown()
  inoremap <expr> <PageUp>   spacevim#vim#complete#PageUp()
  inoremap <expr> <Tab>      spacevim#vim#complete#Tab()
  inoremap <expr> <S-Tab>    spacevim#vim#complete#STab()
  inoremap <expr> <CR>       spacevim#vim#complete#CR()
endfunction

" tab, snippets
function! spacevim#vim#complete#Tab() abort
  let tab_or_snippet = "\<tab>"

  " Provide an option to disable the completion of coc.nvim,
  " since it is not that good for some filetypes. This also means you could
  " enable coc.nvim and ncm2 at the same time.
  if get(g:, 'did_coc_loaded', 0) && get(g:, 'spacevim_enable_coc_completion', 1)
    if pumvisible()
      call feedkeys("\<C-n>", 'n')
    elseif s:check_back_space()
      call feedkeys("\<Tab>", 'n')
    else
      call coc#refresh()
    endif
  else
    let key = pumvisible() ? "\<c-n>" : tab_or_snippet
    call feedkeys(key, 'n')
  endif

  return ''
endfunction

function! spacevim#vim#complete#STab() abort
  let tab_or_snippet = "\<s-tab>"
  let key = pumvisible() ? "\<C-p>" : tab_or_snippet
  call feedkeys(key, 'n')
  return ''
endfunction

function! spacevim#vim#complete#CR() abort
  let key = pumvisible() ? "\<c-y>\<cr>" : "\<cr>"
  call feedkeys(key, 'n')
  return ''
endfunction

function! spacevim#vim#complete#Up() abort
  let key = pumvisible() ? "\<c-p>" : "\<Up>"
  call feedkeys(key, 'n')
  return ''
endfunction

function! spacevim#vim#complete#Down() abort
  let key = pumvisible() ? "\<c-n>" : "\<Down>"
  call feedkeys(key, 'n')
  return ''
endfunction

function! spacevim#vim#complete#PageUp() abort
  let key = pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
  call feedkeys(key, 'n')
  return ''
endfunction

function! spacevim#vim#complete#PageDown() abort
  let key = pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
  call feedkeys(key, 'n')
  return ''
endfunction
