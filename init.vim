""+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
""++++++++++++++++ VIM PLUGS ++++++++++++++++++++++++++++++++++++
""+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

call plug#begin('/home/aidanjbailey/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'skywind3000/asyncrun.vim'
Plug 'kien/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'dense-analysis/ale'
Plug 'liuchengxu/vim-which-key'
Plug 'vim-scripts/tinymode.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'danilo-augusto/vim-afterglow'
Plug 'vhdirk/vim-cmake', { 'for': ['cpp','c','h'] }
Plug 'vim-airline/vim-airline'
Plug 'oblitum/rainbow'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jiangmiao/auto-pairs'
call plug#end()

""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
""++++++++++++++++++ VIM CONFIGURATIONS ++++++++++++++++++++++++
""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

""++++++++++++++ INITIAL SETUP ++++++++++++++++++++++++++++

filetype plugin on
let g:loaded_matchparen=0

"" Unmapping Space
nnoremap <Space> <NOP>
nnoremap <A-p> <NOP>

" Cpp Highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1


"" Leader binds
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

"" Cursor Binds
set cursorline 
highlight CursorLine guibg=#2e2e2e

"" relative line numbers
set relativenumber
set numberwidth=2

" Tab config
set expandtab
set shiftwidth=4
set autoindent
set smartindent
syntax on


"" Theme config
let g:afterglow_inherit_background=0    
colorscheme afterglow
let g:airline_theme = 'afterglow'

"" Rainbow 
let g:rainbow_active = 1

""++++++++++++++ MODULES +++++++++++++++++++++++++++++++++++

"" Hotkeys
source 	~/.config/nvim/modules/keymap.vim

"" Abbreviations
source ~/.config/nvim/modules/abbreviations.vim

" ALE Module
source ~/.config/nvim/modules/ALE.vim

"" Coc Module
source ~/.config/nvim/modules/coc.vim

"" Conoline Modules
"source ~/.config/nvim/modules/conoline.vim

""NERDTree config
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
