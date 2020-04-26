""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
""+++++++++++++++++++ FUNCTIONS ++++++++++++++++++++++++++++++++
""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
function! CheckTerm()
    if exists(':tnoremap')
    startinsert
    endif
endfunction

""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
""+++++++++++++++++++ KEYMAPS ++++++++++++++++++++++++++++++++++
""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"" Terminal Binds
tnoremap <Esc> <C-\><C-n>
" move 1 window right
tnoremap <silent> <A-l> <C-\><C-n>:wincmd l<CR>
" move 1 window up
tnoremap <silent> <A-k> <C-\><C-n>:wincmd k<CR>
" move 1 window down
tnoremap <silent> <A-j> <C-\><C-n>:wincmd j<CR>
" move 1 window left
tnoremap <silent> <A-h> <C-\><C-n>:wincmd h<CR>

"" Ctrlp config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <leader>pb :CtrlPBuffer<CR>
nnoremap <leader>pt :CtrlPTag<CR>

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
nnoremap <silent> <A->> <NOP>
nnoremap <silent> <A->> :wincmd 5><CR>
" decrease window width
nnoremap <silent> <A-<> <NOP>
nnoremap <silent> <A-<> :wincmd 5<<CR>


"" Leader Binding
nnoremap gv 35j
nnoremap gV 35k
"map open new file vertically
nnoremap <leader>Fv :vsp 
"map open new file horizontally
nnoremap <leader>Fs :sp 
" open new file in current window
nnoremap <leader>f :e 
" open file in new tab
nnoremap <leader>Ft :tabnew  
" save file
nnoremap <leader>w :w!<CR>
" exit file
nnoremap <leader>q :q!<CR>
" toggle nerdlist
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
" enter command
nnoremap <leader>b :! 

"" File Specific Binds
autocmd FileType cpp nnoremap <localleader>c :CMake<CR>

"" WhichKey binds
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

"" Tab Hotkeys
" New Tab
nnoremap <silent> <A-t> :tabnew<CR>
" Close tab
nnoremap <silent> <A-c> :tabc<CR>
" Next Tab
nnoremap <silent> <A-f> :tabn<CR>
" Previous Tab
nnoremap <silent> <A-b> :tabp<CR>
" Move Tab
nnoremap <silent> <A-m> :tabs<CR>

"load source
nnoremap <leader>R :!source ~/.config/nvim/init.vim<CR>

" Ctags
" Search for tag
nnoremap <silent> <leader>ts :ts  
" Go to next tag
nnoremap <silent> <leader>tn :tn<CR>
" Go to previous tag
nnoremap <silent> <leader>tp :tp<CR>
