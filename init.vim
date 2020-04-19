""+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
""++++++++++++++++ VIM PLUGS ++++++++++++++++++++++++++++++++++++
""+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

call plug#begin("~/.config/nvim/plugged")
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
Plug 'vhdirk/vim-cmake'
call plug#end()

""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
""++++++++++++++++++ VIM CONFIGURATIONS ++++++++++++++++++++++++
""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

""++++++++++++++ INITIAL SETUP ++++++++++++++++++++++++++++

"" Unmapping Space
nnoremap <Space> <NOP>

"" Leader binds
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

"" Tab config
set expandtab
set shiftwidth=4
set autoindent
set smartindent

"" Theme config
let g:afterglow_inherit_background=1
let g:afterglow_italic_comments=1
colorscheme afterglow

""++++++++++++++ MODULES +++++++++++++++++++++++++++++++++++

"" Hotkeys
source 	~/.config/nvim/modules/keymap.vim

"" ALE Module
source ~/.config/nvim/modules/ALE.vim

"" Coc Module
source ~/.config/nvim/modules/coc.vim

""NERDTree confid
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"" Cursor line
"" let g:conoline_color_normal_dark = 'guibg=#1A8fa5eb guifg=#dd111d gui=None '
""                           \. 'ctermbg=black ctermfg=white'
"" let g:conoline_color_insert_dark = 'ctermfg=white'

