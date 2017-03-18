" ------------------------------------------------------------------
" OS Detection
" ------------------------------------------------------------------

if has("win32")
  source $VIMRUNTIME/vimrc_example.vim
  source $VIMRUNTIME/mswin.vim
  behave mswin
  "set guifont=Consolas:h10
  set guifont=Droid_Sans_Mono_Dotted_for_Powe:h9
  set rtp+=~/.vim/vimfiles/bundle/Vundle.vim/
  let vundlepath='~/.vim/vimfiles/bundle'
else
  " set guifont=Menlo:h12
  set guifont=Droid\ Sans\ Mono\ for\ Powerline:h12
  set rtp+=~/.vim/bundle/vundle/
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
Plugin 'Yggdroot/indentLine'
Plugin 'reedes/vim-pencil'
call vundle#end()
" ------------------------------------------------------------------
" Colorscheme Config
" ------------------------------------------------------------------

syntax enable
colorscheme vylight

" ------------------------------------------------------------------
" Vim-airline Config
" ------------------------------------------------------------------

"let g:airline_theme='silver'

let g:airline_theme='papercolor'

" show airline by default
set laststatus=2 

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" show font symbols
let g:airline_powerline_fonts = 1


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
"  NERDTree
" ------------------------------------------------------------------


" leader key
let mapleader = ","

:command NT NERDTree
map <leader>n :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>


" ------------------------------------------------------------------
"  Show tabs
" ------------------------------------------------------------------

let g:indentLine_enabled = 0
nmap ,t :IndentLinesToggle<CR>
