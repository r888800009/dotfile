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
    Plug 'valloric/youcompleteme'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/syntastic'
    Plug 'majutsushi/tagbar'
    Plug 'sirver/ultisnips'
    Plug 'honza/vim-snippets'
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


" ycm
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
let g:syntastic_cpp_checkers = [ 'gcc' ]

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-d>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

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
