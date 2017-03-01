" ------------------------------------------------------------------
" OS Detection
" ------------------------------------------------------------------

if has("win32")
  source $VIMRUNTIME/vimrc_example.vim
  source $VIMRUNTIME/mswin.vim
  behave mswin
  set guifont=Consolas:h10
  set rtp+=~/.vim/vimfiles/bundle/Vundle.vim/
  let vundlepath='~/.vim/vimfiles/bundle'
else
  set rtp+=~/.vim/bundle/vundle/
  set guifont=Menlo:h12
endif

" ------------------------------------------------------------------
" Turn off the errorbells!
" ------------------------------------------------------------------
set noerrorbells visualbell t_vb=

" ------------------------------------------------------------------
" Vundle Plugins
" ------------------------------------------------------------------

call vundle#begin(vundlepath)
"" Let Vundle manage Vundle
Bundle 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/vylight'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'yegappan/mru'
Plugin 'chrisbra/histwin.vim'
Plugin 'Raimondi/delimitMate'
call vundle#end()

" ------------------------------------------------------------------
" Colorscheme Config
" ------------------------------------------------------------------

syntax enable
colorscheme vylight
let g:airline_theme='silver'
"let g:airline_theme='papercolor'
" show airline by default
set laststatus=2
set g:airline_powerline_fonts = 1
set laststatus=2  

" ------------------------------------------------------------------
" General Config
" ------------------------------------------------------------------
syntax enable
filetype indent on
filetype plugin on
set hidden
set history=100
set linespace=1
set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set encoding=utf-8
set tabstop=2
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase
set smartindent
set autoindent
set showmatch


" ------------------------------------------------------------------
" Custom key bindings and commands
" ------------------------------------------------------------------

:command NT NERDTree
