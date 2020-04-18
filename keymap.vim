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

"" Leader binds
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>a :echo "I AM FULLY OPERATIONAL!"<CR>

"" Terminal Binds
:tnoremap <Esc> <C-\><C-n>

"" Ctrlp config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

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
nmap <leader>cr <Plug>(coc-rename)

" Format selected code 
" nmap <leader>f  <Plug>(coc-format-selected)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
"nmap <leader>ac  <Plug>(coc-codeaction)

" Apply AutoFix to problem on the current line.
"nmap <leader>qf  <Plug>(coc-fix-current)

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
"nnoremap <silent> <leader>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <leader>ce  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <leader>cc  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <leader>co  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <leader>cs  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>ck  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <leader>cp  :<C-u>CocListResume<CR>

"" Window Navigation
" move 1 window right
nnoremap <silent> <A-l> :wincmd l<CR>
" move 1 window up
nnoremap <silent> <A-k> :wincmd k<CR>
" move 1 window down
nnoremap <silent> <A-j> :wincmd j<CR>
" move 1 window left
nnoremap <silent> <A-h> :wincmd h<CR>
" exit current window
nnoremap <silent> <A-q> :wincmd q<CR>
" move window up
nnoremap <silent> <A-K> :wincmd K<CR>
" move window down
nnoremap <silent> <A-J> :wincmd J<CR>
" move window left
nnoremap <silent> <A-H> :wincmd H<CR>
" move window right
nnoremap <silent> <A-L> :wincmd L<CR>
" horizontally split current window
nnoremap <silent> <A-s> :wincmd s<CR>
" vertically split current window
nnoremap <silent> <A-v> :wincmd v<CR>
" rotate windows clockwise
nnoremap <silent> <A-r> :wincmd r<CR>
" rotate windows anti-clockwise
nnoremap <silent> <A-R> :wincmd R<CR>
" resize window up
nnoremap <silent> <A-+> :resize +5<CR>
" resize window down
nnoremap <silent> <A--> :resize -5<CR>
" resize all windows to equal size
nnoremap <silent> <A-=> :wincmd =<CR>
" increase window width
nnoremap <silent> <A->> :wincmd 5><CR>
" decrease window width
nnoremap <silent> <A-<> :wincmd 5<<CR>

"" Leader Binding
"map open new file vertically
nnoremap <leader>Fv :vsp 
"map open new file horizontally
nnoremap <leader>Fh :sp 
" open new file in current window
nnoremap <leader>f :e
" save file
nnoremap <leader>s :w!<CR>
" exit file
nnoremap <leader>q :q!<CR>
" toggle nerdlist
nnoremap <leader>d :NERDTreeToggle<CR>
" terminal
nnoremap <leader>t :terminal<CR>

"" WhichKey binds
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
