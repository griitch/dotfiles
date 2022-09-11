set nocompatible " do not use vi defaults, use vim's default, required for vundle	
filetype off " disable filetype detection, required for vundle

" to install plugins, first install vundle, then launch vim and run
" :PluginInstall

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'

Plugin 'jiangmiao/auto-pairs'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on  " syntax highlighting
set number  " lines numbered
set showcmd " always show commands in the bottom bar
set cursorline " horizontal line on the line the cursor is in
set showmatch " highlight matching brackets
set incsearch  " highlight matches as soon as you start typing for a search
set hlsearch " highlight all search matches
inoremap jj <Esc> 
 



