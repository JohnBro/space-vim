scriptencoding utf-8

let NERDTreeWinPos          = "right"
let NERDTreeWinSize         = 35
let NERDTreeQuitOnOpen      = 1
let NERDTreeShowLineNumbers = 1

nnoremap <silent><F3> :NERDTreeToggle<CR>
inoremap <silent><F3> <ESC>:NERDTreeToggle<CR>
nnoremap <silent><Leader>ft :NERDTreeToggle<CR>
nnoremap <silent><Leader>fd :NERDTreeFind<CR>
