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
set tags=./tags,tags,.git/tags;
"set mouse=a


call vundle#begin()

" Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate. Or you can use :BundleInstall to install if your meet some problems.
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" I can't use group/repo to clone from github by https protocol in China.
" So I clone those plugins by the full url.
Plugin 'git@github.com:VundleVim/Vundle.vim.git'
Plugin 'git@github.com:scrooloose/nerdtree.git'
Plugin 'git@github.com:rkulla/pydiction.git'
Plugin 'git@github.com:vim-airline/vim-airline.git'
Plugin 'git@github.com:vim-airline/vim-airline-themes.git'
Plugin 'git@github.com:ctrlpvim/ctrlp.vim.git'
Plugin 'git@github.com:majutsushi/tagbar.git'
Plugin 'git@github.com:jstemmer/gotags.git'
Plugin 'git@github.com:flazz/vim-colorschemes.git'
Plugin 'git@github.com:tomasr/molokai.git'
Plugin 'git@github.com:fatih/vim-go.git'
Plugin 'git@github.com:soramugi/auto-ctags.vim.git'

call vundle#end()


filetype plugin indent on
syntax on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * WipeReg

let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 3
let g:NERDTreeWinSize=23
let g:NERDTreeNodeDelimiter = "\u00a0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='minimalist'
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
            \ 'dir': 'build\'}
let g:auto_ctags = 1
let g:auto_ctags_directory_list = ['.git']
let g:auto_ctags_search_recursively = 1
let g:auto_ctags_warn_once = 1
"let g:tagbar_autofocus = 1


colorscheme earth
"colorscheme wombat
"colorscheme molokai
"hi comment ctermfg=6
set colorcolumn=80
set backspace=indent,eol,start
set hlsearch


map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
