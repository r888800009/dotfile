set background=dark
set fileencodings=utf8,big5
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

noremap <2-LeftMouse> *
inoremap <2-LeftMouse> <c-o>*

" plugins
call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'airblade/vim-gitgutter'
    Plug 'valloric/youcompleteme'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/syntastic'
    Plug 'majutsushi/tagbar'
    Plug 'sirver/ultisnips'
    Plug 'honza/vim-snippets'
call plug#end()
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

let g:UltiSnipsExpandTrigger="<c-d>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
