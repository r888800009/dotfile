set background=dark

set t_Co=16
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set nu
set ai
set nowrap
set hlsearch
set cursorline
if &term!="linux"
    set t_Co=256
    hi CursorLine ctermfg=none ctermbg=8
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


"key noremap
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>


" plugins
call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()
