set background=dark
set fileencodings=utf8,big5,utf-16le
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set nu
set ai
set nowrap
set hlsearch
set cursorline
set wildmenu

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

"key maps
map <silent> <C-PageUp>   :bp<CR>
map <silent> <C-PageDown> :bn<CR>

map <silent> <C-H>   :bp<CR>
map <silent> <C-L> :bn<CR>

"vim mouse select
noremap <2-LeftMouse> *
inoremap <2-LeftMouse> <c-o>*

" plugin
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
    Plug 'junegunn/vim-easy-align'
call plug#end()

"airline
let g:airline#extensions#tabline#enabled = 1
if &term=="linux"
    let g:airline_theme='solarized'
else
    let g:airline_theme='vice'
endif


"ycm
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

"UltiSnips
let g:UltiSnipsExpandTrigger="<c-d>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" gvim
highlight Normal guifg=white guibg=black
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

"sudo
cmap w!! w !sudo tee > /dev/null %

"EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
