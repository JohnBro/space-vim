" Reload .vimrc
nnoremap <Leader>fR :source $MYVIMRC<CR>

" if maparg('<C-I>', 'n') != ''
  " nunmap <C-I>
" endif

" Use Ctrl-Tab and Alt-Tab to switch tab
map    <C-Tab>  :tabnext<CR>
imap   <C-Tab>  <C-O>:tabnext<CR>
map    <M-Tab>  :tabprev<CR>
imap   <M-Tab>  <C-O>:tabprev<CR>

" Picked from https://github.com/tpope/vim-unimpaired
" Move to core/ftplugin/qf.vim

" Buffers
nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>

" Tabs
nnoremap ]t :tabn<cr>
nnoremap [t :tabp<cr>

" map y <Plug>(operator-flashy)
" nmap Y <Plug>(operator-flashy)$

" Startify
nnoremap <silent><Leader>bh :Startify<CR>

" vim-better-whitespace {
  nnoremap <Leader>xds :StripWhitespace<CR>
" nnoremap <Leader>xdt
" }

" vim-choosewin
nmap <Leader>ww <Plug>(choosewin)

" util
nnoremap <Leader>tc :call spacevim#vim#toggle#CursorColumn()<CR>
nnoremap <Leader>tC :call spacevim#vim#toggle#ColorColumn()<CR>

command! -bar -nargs=0 Rtp :call spacevim#util#Runtimepath()
command! -nargs=? Grep :call spacevim#vim#grep#Grep(<q-args>)

augroup spacevimGUI
  autocmd!
  autocmd GUIEnter * nnoremap <Leader>wm :call spacevim#vim#gui#ToggleFullScreen()<CR>
augroup END
