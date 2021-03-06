"==============================================================
"    file: syntastic.vimrc
"   brief: 语法检查
"
" command: 
"       :Errors                 打开location-list显示错误
"       :SyntasticToggleMode    触发自动模式
"       :SyntasticCheck         手动检查语法
"       :SyntasticInfo          显示filetype的checker
"       :SyntasticReset         清除所有的错误
"       :SyntasticSetLoclist    
" VIM Version: 7.4
"  author: tenfyzhong
"   email: 364755805@qq.com
" created: 2016-06-28 15:37:06
"==============================================================
PluginAdd 'scrooloose/syntastic'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" let g:ycm_show_diagnostics_ui = 0
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_c_remove_include_errors = 1

let g:syntastic_mode_map = {
            \ "mode": "active",
            \ "passive_filetypes": ["python"] }

let g:syntastic_cpp_compiler_options = ' -std=c++11 '
" if executable('gcc')
"     let gccversion = system('gcc -dumpversion')
"     if gccversion >= '4.8.0'
"         let g:syntastic_cpp_compiler_options = ' -std=c++11 '
"     elseif gccversion >= '4.3.0'
"         let g:syntastic_cpp_compiler_options = ' -std=c++0x '
"     endif
" endif


if exists('AirlineToggle')
    let g:airline#extensions#syntastic#enabled = 1
endif
