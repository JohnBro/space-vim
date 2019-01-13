MP 'tpope/vim-surround'
MP 'pelodelfuego/vim-swoop'
MP 'terryma/vim-multiple-cursors'

MP 'scrooloose/nerdcommenter',        { 'on': '<Plug>NERDCommenterToggle' }

MP 'jiangmiao/auto-pairs', { 'on': [] }

MP 'will133/vim-dirdiff',       { 'on': ['DirDiff'] }

if !has("patch-8.1.0360")
  MP 'chrisbra/vim-diff-enhanced',{ 'on': [] }
endif

MP 'JohnBro/Mark', { 'on': [], 'for': ['c', 'cpp', 'sh', 'make', 'java', 'vim'] }

augroup spacevimAutoPairs
  autocmd!
  autocmd CursorHold,CursorHoldI,InsertEnter * call plug#load('auto-pairs') | call AutoPairsTryInit() | autocmd! spacevimAutoPairs
augroup END
