
let mapleader=" "   " set SPACE as the leader key
set nocompatible   " be improved, required
filetype off	   " required

" setup windows specific stuff
if has("gui_running")
  if has("gui_win32")
    set guifont=Source\ Code\ Pro:h13
  endif
endif

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set autoindent
set textwidth=80
set number

set autoread "reload files changed outside vim
set history=1000 "Store lots of :cmdline history
set hlsearch "highlight searched words
set incsearch " show search as typing
set showmatch "highlight matching parens

set wildmenu
set wildmode=longest:full,full

" set the runtime path to include vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" keep plugin commands between vundle begin and vundle end
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/base16-vim'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'jiangmiao/auto-pairs'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-syntastic/syntastic'

call vundle#end() " required

let base16colorspace=256
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
syntax on
colorscheme base16-default-dark

let g:jsx_ext_required = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" js linter should be eslint
let g:syntastic_javascript_checkers=['eslint']
" point to local eslint if exists
if executable('node_modules\.bin\eslint')
  echom "found eslint in local!!!!"
  let b:syntastic_javascript_eslint_exec = 'node_modules\.bin\eslint'
endif

" for syntastic debugging only
" let g:syntastic_debug=3

set foldmethod=syntax

" remappings
nnoremap <leader>o :only<cr>
nnoremap <leader>wv :vsplit<cr>
nnoremap <leader>ws :split<cr>
" nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr> "" change dir as buffer

