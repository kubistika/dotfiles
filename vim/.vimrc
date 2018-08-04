set laststatus=2
set encoding=utf-8
set nowrap
syntax enable
filetype plugin on
set ts=4 sts=4 sw=4 expandtab
set nu

" Plugins using vim-plug
call plug#begin('/home/kobi/.vim/plugged')
Plug('fatih/vim-go')
Plug('vim-airline/vim-airline')
Plug 'vim-airline/vim-airline-themes'
if !has('nvim')
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

if executable('go')
    Plug 'zchee/deoplete-go'
endif

" some plugins that deoplete depends on
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.h' }
call plug#end()

let g:powerline_pycmd="py3"

" set some golang settings for vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_functions = 1

" remap for easy mode switching
nnoremap : ;
nnoremap ; :

set wildmenu

set noshowmode "don't show mode. we use vim-airline!

" reduce lag time when switching between modes
set ttimeoutlen=50

" omnifunc, please don't show another shitty vim
" for each complete option...
set completeopt=menuone

" this is needed for reducing startup time with deoplete
let g:python3_host_prog='/usr/bin/python3'

" lazy load deoplete
autocmd InsertEnter *.{rs,go,js} call deoplete#enable()

" Configure vim-airline
" let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif

let g:airline_symbols.space=" "
let g:airline#extensions#tabline#enable=1
let g:airline#extensions#tabline#show_buffers=0
let g:airline_theme='angr'

colo ron
