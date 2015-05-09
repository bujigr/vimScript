" YouCompleteMe

let b:youcomplete_path = "~/.vim/bundle/YouCompleteMe/"
if isdirectory(expand(b:youcomplete_path))
    if !has('python')
        call Error('has no python, will load supertab')
        let g:use_supertab = 1
        call LoadSingleVimrc('~/.vim/vimrcs/supertab.vimrc', 1)
        finish
    endif

    let b:youcompleteme_lib_path = b:youcomplete_path . "third_party/ycmd/"
    if !filereadable(b:youcompleteme_lib_path . "libclang.so") 
                \&& !filereadable(b:youcompleteme_lib_path . "ycm_core.so")
        call Error("has no compile YCM, will load supertab")
        let g:use_supertab = 1
        call LoadSingleVimrc('~/.vim/vimrcs/supertab.vimrc', 1)
        finish
    endif
endif

PluginAdd 'Valloric/YouCompleteMe'

let g:ycm_min_num_of_chars_for_completion 			= 1
let g:ycm_add_preview_to_completeopt 				= 0
let g:ycm_autoclose_preview_window_after_insertion 	= 1
let g:ycm_error_symbol                              = 'EE'
let g:ycm_warning_symbol                            = 'WW'
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_key_detailed_diagnostics                  = '<leader>d'
let g:ycm_confirm_extra_conf                        = 0


nnoremap <leader>jd :YcmCompleter GoTo<CR>

