"https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
"


set nocompatible              " required
filetype off                  " required

set number		" show line numbers
set relativenumber      " show relative line numbers
set showmatch           " highlight matching braces

"split navigations
set splitbelow
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

noremap <Up>	<Nop>
noremap <Down>	<Nop>
noremap <Left>	<Nop>
noremap <Right>	<Nop>

" Enable folding
set foldmethod=indent
set foldlevel=99

set encoding=utf-8

"pretty code
let python_highlight_all=1
syntax on

" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

autocmd FileType tex,plaintex,markdown,pandoc:
    \ set textwidth=80 |
    \ set autoindent |
    \ set conceallevel=0

au BufNewFile,BufRead *.json:
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.py:
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css:
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

au BufNewFile,BufRead *.hs:
    \ set tabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab

"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

call plug#begin()

Plug 'VundleVim/Vundle.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'scrooloose/syntastic' " check general syntax
Plug 'nvie/vim-flake8' " check PEP 8 syntax
Plug 'jnurmine/Zenburn'

call plug#end()

colorscheme zenburn 

filetype plugin indent on    " required
