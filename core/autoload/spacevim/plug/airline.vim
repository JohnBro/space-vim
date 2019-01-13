scriptencoding utf-8

let g:spacevim#plug#airline#symbols = {}

if get(g:, 'spacevim_no_unicode', 0)
  let g:airline_left_sep           = ''
  let g:airline_right_sep          = ''
  let g:airline_symbols.crypt      = '='
  let g:airline_symbols.linenr     = 'L:'
  let g:airline_symbols.maxlinenr  = 'M'
  let g:airline_symbols.branch     = 'BR'
  let g:airline_symbols.paste      = 'PASTE'
  let g:airline_symbols.spell      = 'SPELL'
  let g:airline_symbols.notexists  = 'NE'
  let g:airline_symbols.whitespace = 'WS'
else
  let g:spacevim#plug#airline#symbols.linenr = '␊'
  let g:spacevim#plug#airline#symbols.linenr = '␤'
  let g:spacevim#plug#airline#symbols.linenr = '¶'
  let g:spacevim#plug#airline#symbols.branch = '⎇'
  let g:spacevim#plug#airline#symbols.paste = 'Þ'
  let g:spacevim#plug#airline#symbols.whitespace = 'Ξ'
endif
