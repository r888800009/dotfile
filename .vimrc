set background=dark
set fileencodings=utf8,big5,utf-16le
set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
set nu
set ai
set nowrap
set hlsearch
set cursorline
set wildmenu
set showcmd
set relativenumber

set t_Co=16
if &term!="linux"
    set t_Co=256
    hi CursorLine ctermfg=none ctermbg=8 cterm=none
endif

highlight LineNr ctermfg=15 ctermbg=none
set mouse=a
set ruler
set formatoptions+=r
set history=100
filetype indent plugin on

" Enable syntax highlighting
syntax on
set clipboard=unnamedplus

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" plugin
call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'airblade/vim-gitgutter'
    Plug 'github/copilot.vim'
    " Plug 'scrooloose/syntastic' " slow
    Plug 'bcicen/vim-vice'
    Plug 'majutsushi/tagbar'
    Plug 'junegunn/vim-easy-align'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'rhysd/vim-clang-format'
    Plug 'SidOfc/mkdx'
call plug#end()

" airline
let g:airline#extensions#tabline#enabled = 1
if &term=="linux"
    let g:airline_theme='solarized'
else
    let g:airline_theme='vice'
endif


" gvim
highlight Normal guifg=white guibg=black
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" sudo
cmap w!! w !sudo tee > /dev/null %

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Better whitespace
let g:better_whitespace_enabled=1

" clang-format
let g:clang_format#detect_style_file=1
let g:clang_format#auto_format=1

" pair
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

" bad habit
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" auto header
autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python\<nl>\"|$
autocmd BufNewFile *.sh 0put =\"#!/bin/bash\<nl>\"|$

autocmd BufNewFile *.c 0r $DOTFILE/templates/template.c
autocmd BufNewFile *.cpp 0r $DOTFILE/templates/template.cpp
