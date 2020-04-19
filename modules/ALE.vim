""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""
""""" Configuration file for ALE module"""""
""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""

let g:ale_completion_enabled = 0
let g:ale_lint_on_insert_leave = 0
let b:ale_linters = {
    \ 'python' : ['pyflakes'],
    \}
let g:ale_fix_on_save = 1
let g:ale_set_balloons = 1
let g:ale_set_quickfix = 1
let g:ale_sign_error = "EE"
let g:ale_sign_warning = "WW"
let g:ale_echo_msg_format = "(%linter%) %code:  %%s"

"" Hotkeys
