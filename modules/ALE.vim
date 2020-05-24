""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""
""""" Configuration file for ALE module"""""
""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""
let g:ale_completion_enabled = 0
let g:ale_lint_on_insert_leave = 1
"let g:ale_linters_explicit = 1
"let b:ale_linters ={ 
"    \ 'cpp': [''],
"    \ 'python': [''],
"    \ 'bash': [''],
"    \}
let g:ale_cpp_clang_options = '-std=c++11 -Wall'
let g:ale_cpp_clangd_options = '-std=c++11 -Wall'
let g:ale_fix_on_save = 1
let g:ale_set_balloons = 0
let g:ale_set_quickfix = 1
let g:ale_sign_error = 'EE'
let g:ale_sign_warning = 'WW'
let g:ale_echo_msg_format = '(%linter%)%code:  %%s'
let g:ale_open_list = 0
let g:cmake_ycm_symlinks = 1
let g:ale_list_window_size = 5

highlight ALEError ctermbg=none cterm=underline ctermfg=red
highlight ALEWarning ctermbg=none cterm=underline ctermfg=yellow

"" Hotkeys
nnoremap <leader>at :ALEToggle<CR>
nnoremap <leader>aq :ALEFixSuggest<CR>
nnoremap <leader>af :ALEFix<CR>
nnoremap <leader>an :ALENext<CR>
nnoremap <leader>ap :ALEPrevious<CR>
nnoremap <leader>ai :ALEInfo<CR>
nnoremap <leader>aG :ALELast<CR>
nnoremap <leader>ag :ALEFirst<CR>
nnoremap <leader>ab :ALEToggleBuffer<CR>

aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && &buftype == "quickfix"|q|endif
aug END
