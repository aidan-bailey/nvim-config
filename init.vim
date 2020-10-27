call plug#begin('/home/aidanjbailey/.config/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'danilo-augusto/vim-afterglow'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
call plug#end()

"""""""""""""""""""""""""""""
""""""VIM CONFIGURATION""""""
"""""""""""""""""""""""""""""

filetype plugin on
syntax on

""unmapping space
nnoremap <Space> <NOP>
nnoremap <A-p> <NOP>

"" Leader Binds
let g:mapleader = "\<Space>"
let g:maplocalleader = ","

"" Theme Config
colorscheme afterglow

"" Tab Config
set expandtab
set shiftwidth=2
set autoindent
set smartindent

"" Cursorlines
set cursorline

"" Font
set guifont=Nerd\ Source\ Code\ Pro\ 11

""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""" MODULES """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""
for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
    exe 'source' f
endfor
