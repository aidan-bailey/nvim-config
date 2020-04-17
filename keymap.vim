""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
""+++++++++++++++++++ FUNCTIONS ++++++++++++++++++++++++++++++++
""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
""+++++++++++++++++++ KEYMAPS ++++++++++++++++++++++++++++++++++
""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"" Unmapping Space
nnoremap <Space> <NOP>

"" Mapping Alt


"" Leader binds
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>a :echo "I AM FULLY OPERATIONAL!"<CR>

"" Coc binds

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Format selected code 
nmap <leader>f  <Plug>(coc-format-selected)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
  nmap <leader>ac  <Plug>(coc-codeaction)

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <leader>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <leader>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <leader>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <leader>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <leader>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <leader>p  :<C-u>CocListResume<CR>

"" Window Navigation
" move 1 window right
nnoremap <silent> <leader>wl :wincmd l<CR>
" move 1 window up
nnoremap <silent> <leader>wk :wincmd k<CR>
" move 1 window down
nnoremap <silent> <leader>wj :wincmd j<CR>
" move 1 window left
nnoremap <silent> <leader>wh :wincmd h<CR>
" exit current window
nnoremap <silent> <leader>wq :wincmd q<CR>
" horizontally split current window
nnoremap <silent> <leader>ws :wincmd s<CR>
" vertically split current window
nnoremap <silent> <leader>wv :wincmd v<CR>
" rotate windows clockwise
nnoremap <silent> <leader>wr :wincmd r<CR>
" rotate windows anti-clockwise
nnoremap <silent> <leader>wR :wincmd R<CR>
" move window to top
nnoremap <silent> <leader>wK :wincmd K<CR>
" move window to bottom
nnoremap <silent> <leader>wJ :wincmd J<CR>
" move window to right
nnoremap <silent> <leader>wL :wincmd L<CR>
" move window to left
nnoremap <silent> <leader>wH :wincmd H<CR>
" resize all windows to equal size
nnoremap <silent> <leader>w= :wincmd =<CR>
" increase window height
nnoremap <silent> <leader>w+ :wincmd +<CR>
" decrease window height
nnoremap <silent> <leader>w- :wincmd -<CR>
" increase window width
nnoremap <silent> <leader>w> :wincmd ><CR>
" decrease window width
nnoremap <silent> <leader>w< :wincmd <<CR>

"" WhichKey binds
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
