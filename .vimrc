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

Plugin 'tomasiser/vim-code-dark'

Plugin 'godlygeek/tabular'

Plugin 'preservim/vim-markdown'

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
" set cursorlineopt=number " only highlight the line number, disabled on
" parrot vm as it does not recognize the command
set showmatch " highlight matching brackets
set incsearch  " highlight matches as soon as you start typing for a search
set hlsearch " highlight all search matches
inoremap jj <Esc> 
nnoremap <C-t> :NERDTreeToggle<CR>
nmap <Tab> <C-w>w " ctrl+w w is used by default to switch between panes, use tab instead
colorscheme codedark
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap n nzz




autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
