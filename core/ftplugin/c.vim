if exists('b:did_spacevim_c_ftplugin') || !spacevim#load('c-c++')
  finish
endif
let b:did_spacevim_c_ftplugin = 1

setlocal cindent

setlocal nowrap tabstop=4 shiftwidth=4 softtabstop=4 expandtab textwidth=150

nnoremap <buffer> <Leader>= :ClangFormat<CR>
vnoremap <buffer> <Leader>= :<C-U>ClangFormat<CR>
