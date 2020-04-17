call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kien/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'miyakogi/conoline.vim'
Plug 'liuchengxu/vim-which-key'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-scripts/tinymode.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'danilo-augusto/vim-afterglow'
Plug 'jackguo380/vim-lsp-cxx-highlight'
call plug#end()

""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
""++++++++++++++++++ PLUGIN CONFIGURATIONS +++++++++++++++++++++
""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"" Coc config
source ~/.config/nvim/coc.vim

"" Ctrlp config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"" Tab config
set expandtab
set shiftwidth=4
set autoindent
set smartindent

"" Cursor line
"" let g:conoline_color_normal_dark = 'guibg=#1A8fa5eb guifg=#dd111d gui=None '
""                           \. 'ctermbg=black ctermfg=white'
"" let g:conoline_color_insert_dark = 'ctermfg=white'

"" Theme/Gruvbox config
let g:afterglow_inherit_background=1
let g:afterglow_italic_comments=1
colorscheme afterglow

"" Hotkeys 
source 	~/.config/nvim/keymap.vim
