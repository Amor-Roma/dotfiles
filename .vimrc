set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Keep Plugin commands between vundle#begin/end.
call vundle#begin()

" Put more plugins here
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'raimondi/delimitmate'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tomasr/molokai'

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

" Set 2 spaces for each tab
:set tabstop=2 shiftwidth=2 expandtab

" Alias
" Format XML to human readable
command Xml  %!xmllint --format %
" Toggle line indentation color scheme on/off (/vim-indent-guides)
command Indent IndentGuidesToggle  

" Color scheme
set background=dark
syntax enable
colorscheme molokai

" Indent Guide ('nathanaelkane/vim-indent-guides')
let g:indent_guides_enable_on_vim_startup = 0  
let g:indent_guides_auto_colors = 0      
hi IndentGuidesOdd  ctermbg=grey         
hi IndentGuidesEven ctermbg=darkgrey     
let g:rehash256 = 1                       
let g:indent_guides_color_change_percent = 10 
let g:indent_guides_guide_size = 2


" formatting stuff
set number
set ruler
