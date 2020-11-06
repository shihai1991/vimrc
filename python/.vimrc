set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
set number
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
au BufNewFile,BufRead *.py,*.pyw setf python
set autoindent " same level indent
set smartindent " next level indent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set pastetoggle=<F9>
set tags=./tags,tags;
"set mouse=a

call vundle#begin()

"use PluginInstall to install
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rkulla/pydiction'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'jstemmer/gotags'
Plugin 'flazz/vim-colorschemes'
Plugin 'tomasr/molokai'


call vundle#end()
filetype plugin indent on
syntax on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 3
let NERDTreeWinSize=47
let g:NERDTreeNodeDelimiter = "\u00a0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='minimalist'
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'


colorscheme earth
"colorscheme wombat
"colorscheme molokai
"hi comment ctermfg=6
set colorcolumn=80

map <C-n> :NERDTreeToggle<CR>
nmap <F12> :TagbarToggle<CR>
