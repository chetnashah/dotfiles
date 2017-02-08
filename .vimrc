
set nocompatible   " be improved, required
filetype off	   " required

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
set textwidth=80
set number

set autoread "reload files changed outside vim
set history=1000 "Store lots of :cmdline history
set hlsearch "highlight searched words
set showmatch "highlight matching parens


" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" keep plugin commands between vundle begin and vundle end
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/base16-vim'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'

call vundle#end() " required

let g:airline#extensions#tabline#enabled = 1
set laststatus=2
