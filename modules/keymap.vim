""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
""+++++++++++++++++++ FUNCTIONS ++++++++++++++++++++++++++++++++
""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
""+++++++++++++++++++ KEYMAPS ++++++++++++++++++++++++++++++++++
""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"" Terminal Binds
:tnoremap <Esc> <C-\><C-n>

"" Ctrlp config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

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
