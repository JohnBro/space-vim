" YouCompleteMe settings {
" !Windows : Completer by YouCompleteMe
" Step1, 编译安装llvm+clang, record 这个目录为 llvm_root_dir
" Step2, 编译 ycm_core.(指定不使用 python2, 防止冲突)
"   mkdir ycm_build; cd ycm_build;  ycm_build 为不在源码的任意目录.
"   cmake -G "<generator>" -DUSE_PYTHON2=OFF -DPATH_TO_LLVM_ROOT=~/ycm_temp/llvm_root_dir . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
"   cmake --build . --target ycm_core --config Release
"   需要指定 python 二进制和 python 的搜索目录为 python3 的目录
let g:ycm_global_ycm_extra_conf     = fnamemodify(expand('<sfile>'), ':h') . '/global_conf.py'
let g:ycm_server_python_interpreter = '/usr/local/bin/python3'
let g:ycm_python_binary_path        = '/usr/local/bin/python3'
let g:ycm_confirm_extra_conf        = 0
" }
