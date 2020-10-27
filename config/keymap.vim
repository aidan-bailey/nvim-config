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

" NERDTree
nnoremap <silent><leader>n :NERDTreeToggle<CR>

"" Ctrlp config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <leader>pb :CtrlPBuffer<CR>
nnoremap <leader>pt :CtrlPTag<CR>

" WINDOWS
" right
nnoremap <silent><leader>wl :wincmd l<CR>
" left
nnoremap <silent><leader>wh :wincmd h<CR>
" down
nnoremap <silent><leader>wj :wincmd j<CR>
" up
nnoremap <silent><leader>wk : wincmd k<CR>
" close
nnoremap <silent><leader>wq :wincmd q<CR>
" vertical split
nnoremap <silent><leader>wv : wincmd v<CR>
" horizontal split
nnoremap <silent><leader>ws : wincmd s<CR>

" horizontally split current window
nnoremap <silent> <leader>ws :wincmd s<CR>
" vertically split current window
nnoremap <silent> <leader>wv :wincmd v<CR>

" resize window up
nnoremap <silent> <leader>w+ :resize +5<CR>
" resize window down
nnoremap <silent> <leader>w- :resize -5<CR>

" increase window width
nnoremap <silent> <leader>w> <NOP>
nnoremap <silent> <leader>w> :wincmd 5><CR>
" decrease window width
nnoremap <silent> <leader>w< <NOP>
nnoremap <silent> <leader>w< :wincmd 5<<CR>

" resize all windows to equal size
nnoremap <silent> <leader>w= :wincmd =<CR>

"" Tab Hotkeys
" New Tab
nnoremap <silent> <leader>tt :tabnew<CR>
" Close tab
nnoremap <silent> <leader>tq :tabc<CR>
" Next Tab
nnoremap <silent> <leader>tl :tabn<CR>
" Previous Tab
nnoremap <silent> <leader>th :tabp<CR>
" Move Tab
nnoremap <silent> <leader>tm :tabs<CR>

"Buffer Binds
nnoremap <leader>bl :buffers<CR>
nnoremap <leader>bdd :bd<CR>
nnoremap <leader>bdn :bdelete <tab> 
nnoremap <leader>be :b <tab>

"load source
nnoremap <leader>R :!source ~/.config/nvim/init.vim<CR>
