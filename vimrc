set nocompatible
filetype off

if has("win32")
    set rtp+=c:\Program\ Files\ (x86)\vim\vim74\bundle\vundle.vim
else
    set rtp+=~/.vim/bundle/vundle.vim
endif

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" Plugins
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'othree/html5.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tcomment_vim'
Plugin 'rstacruz/sparkup'
Plugin 'Valloric/YouCompleteMe'

" Color schemes
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

filetype plugin indent on

function! Run()
    let ft = &filetype

    if ft == "vim"
        :so %<CR>
    endif

endfunction

" Syntastic Settings
set statusline+=%#waringmsg#
set statusline+=%{SyntasticStatusLineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


set omnifunc=syntaxcomplete#Complete
set completeopt=menu
set modelines=0


syntax enable
set background=dark
colorscheme solarized

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set relativenumber

let mapleader="-"
nnoremap <leader>s /\v
vnoremap <leader>s /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

if has('gui_running')
    set guifont=Lucida_Console:h14:cANSI
endif

nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> ^
nnoremap <C-l> $

nnoremap <leader>f F<space>a(<ESC>A)<space>-><ESC>o
nnoremap <leader>b :b#<Enter>
nnoremap <leader>ic i#{}<left>
nnoremap <leader>id i{%<space>%}<left><left><space><left>
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l 
" imap <NUL> <C-X><C-O>
nnoremap <leader>r @:<cr>
nnoremap <leader>xp :w !python %<CR>
nnoremap <leader><c-e> :ClearAllCtrlPCaches<CR>
nnoremap <leader>e :CtrlP<CR>
nnoremap <leader>g :w<CR>:w !grunt<CR>
nnoremap <space> zz
nnoremap <C-j> 10jzz
nnoremap <C-k> 10kzz
