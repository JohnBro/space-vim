" Define prefix dictionary
let g:spacevim#map#leader#desc =  get(g:, 'spacevim#map#leader#desc', {})
let g:spacevim#map#leader#desc['name'] =  'space-vim root'
let s:l = mapleader

for s:i in range(1, 9)
  let g:spacevim#map#leader#desc[s:i] = 'window-'.s:i
endfor
unlet s:i

let g:spacevim#map#leader#desc['?'] = [ 'Maps'  ,  'show-keybindings' ]
let g:spacevim#map#leader#desc[';'] = [ '<Plug>NERDCommenterToggle'  ,  'commenter' ]
let g:spacevim#map#leader#desc['='] = 'formater'
let g:spacevim#map#leader#desc[s:l] = [ '<Esc>'  , 'exit' ]

let g:spacevim#map#leader#desc['a'] = {
      \ 'name' : '+align',
      \ s:l : ['<Esc>'  ,  'exit'],
      \ '&' : ['<Plug>AlignWith&'  ,  'align with &'],
      \ '=' : ['<Plug>AlignWith='  ,  'align with ='],
      \ '=>': ['<Plug>AlignWith=>' ,  'align with =>'],
      \ ':' : ['<Plug>AlignWith:'  ,  'align with :'],
      \ '::': ['<Plug>AlignWith::' ,  'align with ::'],
      \ ',' : ['<Plug>AlignWith,'  ,  'align with ,'],
      \ ',,': ['<Plug>AlignWith,,' ,  'align with ,,'],
      \ '|' : ['<Plug>AlignWith|'  ,  'align with |'],
      \ 'w' : ['<Plug>AlignWith?'  ,  'align with what ?'],
      \ }

let g:spacevim#map#leader#desc['b'] = {
      \ 'name' : '+buffer'       ,
      \ s:l : ['<Esc>'  ,  'exit'],
      \ '1' :  'buffer-1'        ,
      \ '2' :  'buffer-2'        ,
      \ '3' :  'buffer-3'        ,
      \ '4' :  'buffer-4'        ,
      \ '5' :  'buffer-5'        ,
      \ '6' :  'buffer-6'        ,
      \ '7' :  'buffer-7'        ,
      \ '8' :  'buffer-8'        ,
      \ '9' :  'buffer-9'        ,
      \ 'd' :  'delete-buffer'   ,
      \ 'f' :  'first-buffer'    ,
      \ 'h' :  'home-buffer'     ,
      \ 'k' :  'kill-buffer'     ,
      \ 'l' :  'last-buffer'     ,
      \ 'n' :  'next-buffer'     ,
      \ 'p' :  'previous-buffer' ,
      \ 'b' :  'fzf-buffer'      ,
      \ '?' :  'fzf-buffer'      ,
      \ }

let g:spacevim#map#leader#desc['c'] = {
      \ 'name' : '+cscope'                            ,
      \ s:l : ['<Esc>'  ,  'exit'],
      \ 's' : ['spacevim#vim#cscope#Find("symbol")'   , 'find-this-symbol']                       ,
      \ 'g' : ['spacevim#vim#cscope#Find("global")'   , 'global-definition']                      ,
      \ 'c' : ['spacevim#vim#cscope#Find("calls")'    , 'find-functions-calling-this-function']   ,
      \ 't' : ['spacevim#vim#cscope#Find("text")'     , 'text']                                   ,
      \ 'e' : ['spacevim#vim#cscope#Find("egrep")'    , 'egrep']                                  ,
      \ 'f' : ['spacevim#vim#cscope#Find("file")'     , 'find-this-file']                         ,
      \ 'i' : ['spacevim#vim#cscope#Find("includes")' , 'find-files-#include-this-file']          ,
      \ 'd' : ['spacevim#vim#cscope#Find("called")'   , 'find-functions-called-by-this-function'] ,
      \ }

let g:spacevim#map#leader#desc['d'] = 'scroll-down'

let g:spacevim#map#leader#desc['e'] = {
      \ 'name' : '+errors'     ,
      \ s:l : ['<Esc>'  ,  'exit'],
      \ 'n' : 'next-error'     ,
      \ 'p' : 'previous-error' ,
      \ }

let g:spacevim#map#leader#desc['f'] = {
      \ 'name' : '+find/files/fold'             ,
      \ s:l : ['<Esc>'  ,  'exit'],
      \ '0' : '0-fold-level'                    ,
      \ '1' : '1-fold-level'                    ,
      \ '2' : '2-fold-level'                    ,
      \ '3' : '3-fold-level'                    ,
      \ '4' : '4-fold-level'                    ,
      \ '5' : '5-fold-level'                    ,
      \ '6' : '6-fold-level'                    ,
      \ '7' : '7-fold-level'                    ,
      \ '8' : '8-fold-level'                    ,
      \ '9' : '9-fold-level'                    ,
      \ 'd' : 'find-current-buffer-in-NERDTree'  ,
      \ 'f' : 'files-in-current-dir'             ,
      \ 'h' : 'files-in-home-dir'                ,
      \ 's' : 'save-file'                        ,
      \ 't' : 'toggle-NERDTree'                 ,
      \ '?' : 'files-in-current-dir'             ,
      \ 'R' : 'reload-vimrc'                    ,
      \ 'b' : ['BLines'                         , 'fzf-find-current-buffer'] ,
      \ }

let g:spacevim#map#leader#desc['g'] = {
      \ 'name' : '+git/version-control' ,
      \ s:l : ['<Esc>'  ,  'exit'],
      \ 'b' : ['Gblame'                 , 'fugitive-blame']             ,
      \ 'c' : ['BCommits'               , 'commits-for-current-buffer'] ,
      \ 'C' : ['Gcommit'                , 'fugitive-commit']            ,
      \ 'd' : ['Gdiff'                  , 'fugitive-diff']              ,
      \ 'e' : ['Gedit'                  , 'fugitive-edit']              ,
      \ 'l' : ['Glog'                   , 'fugitive-log']               ,
      \ 'r' : ['Gread'                  , 'fugitive-read']              ,
      \ 's' : ['Gstatus'                , 'fugitive-status']            ,
      \ 'w' : ['Gwrite'                 , 'fugitive-write']             ,
      \ 'p' : ['Git push'               , 'fugitive-push']              ,
      \ 'y' : ['Goyo'                   , 'goyo-mode']                  ,
      \ }

" FIXME: do not use command here
let g:spacevim#map#leader#desc['h'] = {
      \ 'name' : '+history/help',
      \ s:l : ['<Esc>'  ,  'exit'],
      \ 'c' : [ 'History:'  , 'command history' ],
      \ 'f' : [ 'History'   , 'file history' ]    ,
      \ 's' : [ 'History/'  , 'search history' ] ,
      \ }

let g:spacevim#map#leader#desc['j'] = {
      \ 'name' : '+jump/json'                   ,
      \ s:l : ['<Esc>'  ,  'exit'],
      \ 'j' : 'easymotion-goto-char'       ,
      \ 'J' : 'easymotion-goto-char-2'     ,
      \ 'l' : 'jump-linewise'              ,
      \ 'w' : 'jump-to-word-bidirectional' ,
      \ 'f' : 'jump-forward-wordwise'      ,
      \ 'b' : 'jump-backword-wordwise'     ,
      \ 'F' : ['execute line(".")."!python -m json.tool"', 'format-current-raw-oneline-json'],
      \ }

let g:spacevim#map#leader#desc['l'] = {
      \ 'name' : '+lsp'                               ,
      \ s:l : ['<Esc>'  ,  'exit'],
      \ 'a' : ['spacevim#lang#util#CodeAction()'      , 'code-action']      ,
      \ '=' : ['spacevim#lang#util#Format()'          , 'formatting']       ,
      \ 'c' : ['LanguageClient_contextMenu()'         , 'context-menu']     ,
      \ 'h' : ['LanguageClient#textDocument_hover()'  , 'hover']            ,
      \ 'r' : ['spacevim#lang#util#FindReferences()'  , 'references']       ,
      \ 'R' : ['spacevim#lang#util#Rename()'          , 'rename']           ,
      \ 's' : ['spacevim#lang#util#DocumentSymbol()'  , 'document-symbol']  ,
      \ 'S' : ['spacevim#lang#util#WorkspaceSymbol()' , 'workspace-symbol'] ,
      \ 'g' : {
        \ 'name': '+goto'                                       ,
        \ s:l : ['<Esc>'  ,  'exit'],
        \ 'd' : ['spacevim#lang#util#Definition()'     , 'definition']      ,
        \ 't' : ['spacevim#lang#util#TypeDefinition()' , 'type-definition'] ,
        \ 'i' : ['spacevim#lang#util#Implementation()' , 'implementation']  ,
        \ }                                                     ,
      \ }

let g:spacevim#map#leader#desc['m'] = {
      \ 'name' : '+marker',
      \ s:l : ['<Esc>'  ,  'exit'],
      \ '*' : 'mark search-before'     ,
      \ '#' : 'mark search-next'       ,
      \ 'c' : 'mark clear'             ,
      \ 'f' : 'mark for()'             ,
      \ 'r' : 'mark regex'             ,
      \ 's' : 'mark set'               ,
      \ }

let g:spacevim#map#leader#desc['M'] = {
    \ 'name' : '+signature-Marker',
    \ s:l : ['<Esc>'  ,  'exit'],
    \ }

let g:spacevim#map#leader#desc['p'] = {
      \ 'name' : '+projects'                                ,
      \ s:l : ['<Esc>'  ,  'exit'],
      \ 'f' : ['spacevim#plug#fzf#FindFileInProject()' , 'find-file-in-project']   ,
      \ 's' : ['Rag'                                   , 'search-in-project']    ,
      \ 'w' : ['spacevim#plug#fzf#SearchCword()'       , 'find-cword-in-project'] ,
      \ }

let g:spacevim#map#leader#desc['q'] = 'quit'

let g:spacevim#map#leader#desc['Q'] = [ 'qa!', 'quit-without-saving' ]

let g:spacevim#map#leader#desc['s'] = {
      \ 'name' : '+search/show'                   ,
      \ s:l : ['<Esc>'  ,  'exit'],
      \ 'a' : 'search-in-ag'                      ,
      \ 'b' : ['BLines'                           , 'search-in-buffer']       ,
      \ 'B' : ['spacevim#plug#fzf#SearchBcword()' , 'search-cword-in-buffer'] ,
      \ 'c' : 'search-clear-highlight'            ,
      \ 'h' : ['spacevim#util#SyntaxHiGroup()'    , 'show-highlight-group']   ,
      \ 'm' : ['<Plug>SwoopMultiBuffers'          , 'search-in-multi-swoop']  ,
      \ 'r' : 'search-in-rg'                      ,
      \ 's' : ['<Plug>SwoopSearch'                , 'search-in-swoop-buffer'] ,
      \ }

function! s:buftag() abort
  if exists(':BTags')
    BTags
  elseif exists(':LeaderfBufTag')
    LeaderfBufTag
  else
    echom "Not avaliable"
  endif
endfunction

let g:spacevim#map#leader#desc['t'] = {
      \ 'name' : '+toggle/tags'                     ,
      \ s:l : ['<Esc>'  ,  'exit'],
      \ '%' : 'auto-pairs',
      \ 'g' : ['spacevim#plug#toggle#Git()'         , 'git-status-indicator'] ,
      \ 'i' : {
        \ 'name' : '+indent'    ,
        \ 'i' : 'indent-lines'  ,
        \ 'l' : 'leading-space' ,
        \ 'g' : 'leading-guide' ,
        \ },
      \ 'p' : ['setlocal paste!'                    , 'paste-mode']           ,
      \ 's' : ['SyntasticToggleMode'                , 'syntastic']            ,
      \ 'b' : [function('s:buftag')                 , 'tags-in-current-buffer'],
      \ 't' : 'tagbar'                              ,
      \ 'c' : ['spacevim#vim#toggle#CursorColumn()' , 'cursor-column']        ,
      \ 'C' : ['spacevim#vim#toggle#ColorColumn()'  , 'color-column']         ,
      \ }

let g:spacevim#map#leader#desc['T'] = {
      \ 'name': '+tab' ,
      \ s:l : ['<Esc>'  ,  'exit'],
      \ '1' : 'tab-1'  ,
      \ '2' : 'tab-2'  ,
      \ '3' : 'tab-3'  ,
      \ '4' : 'tab-4'  ,
      \ '5' : 'tab-5'  ,
      \ '6' : 'tab-6'  ,
      \ '7' : 'tab-7'  ,
      \ '8' : 'tab-8'  ,
      \ '9' : 'tab-9'  ,
      \ 'a' : 'tab-add'      ,
      \ 'c' : 'tab-close'    ,
      \ 'f' : 'tab-find'      ,
      \ 'l' : 'tab-list'     ,
      \ 'n' : 'tab-next'     ,
      \ 'p' : 'tab-previous' ,
      \ }

let g:spacevim#map#leader#desc['u'] = 'scroll-up'

let g:spacevim#map#leader#desc['w'] = {
      \ 'name' : '+windows'                       ,
      \ s:l : ['<Esc>'  ,  'exit'],
      \ 'w' :  'other-window'                     ,
      \ 'd' :  'delete-window'                    ,
      \ '-' :  'split-window-below'               ,
      \ '|' :  'split-window-right'               ,
      \ '2' :  'layout-double-columns'            ,
      \ 'o' :  ['only', 'close-all-windows-except-current'] ,
      \ 'h' :  'window-left'                      ,
      \ 'j' :  'window-below'                     ,
      \ 'l' :  'window-right'                     ,
      \ 'k' :  'window-up'                        ,
      \ 'H' :  'expand-window-left'               ,
      \ 'J' :  'expand-window-below'              ,
      \ 'L' :  'expand-window-right'              ,
      \ 'K' :  'expand-window-up'                 ,
      \ '=' :  'balance-window'                   ,
      \ 's' :  'split-window-below'               ,
      \ 'v' :  'split-window-below'               ,
      \ '?' :  'fzf-window'                       ,
      \ }

let g:spacevim#map#leader#desc['x'] = {
      \ 'name' : '+text'           ,
      \ s:l : ['<Esc>'  ,  'exit'],
      \ 'a' : ['<Plug>(EasyAlign)' , 'easy-align']                 ,
      \ 'd' : {
        \ 'name' : '+doxygen',
        \ s:l : ['<Esc>'  ,  'exit'],
        \ }                                                        ,
      \ 'w' : ['StripWhitespace'   , 'delete-trailing-whitespace'] ,
      \ }
