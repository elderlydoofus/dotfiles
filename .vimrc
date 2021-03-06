set nocompatible              " be iMproved, required
filetype off                  " required

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'mileszs/ack.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Bundle "myusuf3/numbers.vim"
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()
filetype plugin indent on
" End Vundle

inoremap jk <ESC>
let mapleader = ","

colorscheme badwolf
set termguicolors

" PEP 008
au BufNewFile,BufRead *.py
    \ set tabstop=4       |
    \ set softtabstop=4   |
    \ set shiftwidth=4    |
    \ set textwidth=79    |
    \ set expandtab       |
    \ set autoindent      |
    \ set fileformat=unix |

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" UTF-8
set encoding=utf-8

" Prettify python code
let python_highlight_all=1
syntax on

" Line numbering
set nu

" Get off my lawn - helpful when learning Vim :)
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Open NERDTree on vim launch by default
autocmd vimenter * NERDTree

" NERDTreeToggle map to Ctrl-n
map <C-n> :NERDTreeToggle<CR>

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
