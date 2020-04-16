call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-python'
Plug 'kien/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'miyakogi/conoline.vim'
Plug 'vim-scripts/Zenburn'
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
Plug 'liuchengxu/vim-which-key'
call plug#end()

""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
""++++++++++++++++++ PLUGIN CONFIGURATIONS +++++++++++++++++++++
""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"" Coc config
source ~/.config/nvim/coc.vim

"" Ctrlp config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"" Cursor line
let g:conoline_color_normal_dark = 'guibg=#1A8fa5eb guifg=#dd111d gui=None '
                           \. 'ctermbg=darkgrey ctermfg=lightred'
let g:conoline_color_insert_dark = 'guibg=black guifg=white gui=bold '
			   \. 'ctermbg=darkgrey ctermfg=lightred'

"" Theme/Gruvbox config
colorscheme gruvbox
let g:grubox_contrast_light = 1

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

"" Window Navigation
nnoremap <silent> <leader>l :wincmd l<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>q :wincmd q<CR>
nnoremap <silent> <leader>s :wincmd s<CR>
nnoremap <silent> <leader>v :wincmd v<CR>
nnoremap <silent> <leader>r :wincmd r<CR>


"" WhichKey binds
""nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
set timeoutlen=2000
