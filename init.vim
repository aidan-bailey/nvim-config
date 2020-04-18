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
""++++++++++++++++++ PLUGIN CONFIGURATIONS +++++++++++++++++++++
""++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"" ALE Confi

let g:ale_completion_enabled = 0
let g:ale_lint_on_insert_leave = 1
let b:ale_linters = ['flake8', 'pylint']
let g:ale_fix_on_save = 1
let g:ale_set_balloons = 1
let g:ale_set_quickfix = 1
let g:ale_sign_error = "EE="
let g:ale_sign_warning = "WW="
let g:ale_python_pylint_options = '--disable=C'

"" Coc config
source ~/.config/nvim/coc.vim

""NERDTree confid
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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
