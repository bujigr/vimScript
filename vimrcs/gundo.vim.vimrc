"==============================================================
"    file: gundo.vim.vimrc
"   brief: undo历史
"
"    nmap: <leader>gu 触发gundo窗口
" VIM Version: 7.4
"  author: tenfyzhong
"   email: 364755805@qq.com
" created: 2016-04-14 13:23:21
"==============================================================
PluginAdd 'sjl/gundo.vim'

if exists("g:gundo_vim_init")
    finish
endif

let g:gundo_right = 1

nnoremap <unique><silent><leader>gu <esc>:GundoToggle<cr>

let g:gundo_vim_init = 1
