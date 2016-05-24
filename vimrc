" ~/.vimrc: executed by ViM for configuration

" Behaviour
set nocompatible "disable Vi compatibility
set pastetoggle=<F3>

runtime! bundle/vim-pathogen/autoload/pathogen.vim
if exists("g:loaded_pathogen")
    execute pathogen#infect()
endif

" Movement and search
set incsearch "start search immediately
set smartcase "ignore case until a uppercase letter is explicitly specified

" Text display
set number
set relativenumber
set scrolloff=4
set colorcolumn=80
highlight ColorColumn ctermbg=grey

" Syntax, highlighting and spelling
syntax on
filetype plugin indent on
set hlsearch "highlight all search matches

" Multiple windows
set laststatus=2 "always show the status bar
set hidden "dont unload a buffer when it is hidden

" Messages and info
set ruler "show row and column number
set showmode "show current editor mode
set showcmd "show partial commands being typed

" Text editing
set backspace=indent,eol,start
set complete=.,w,t

" Tabs and indenting
set tabstop=4
set expandtab "converts Tab's to whitespaces
set softtabstop=4 "tab key indents by four spaces
set shiftwidth=4 "width for autoindents
set smartindent
set shiftround "round to shiftwidth when indenting

" Folding
"

" Reading and writing files
set nobackup
set autoread
set noswapfile

" Command line editing
set history=100
set wildmenu
set wildmode=full

" Text encoding
set encoding=utf-8 nobomb

" Plugin settings
if exists("g:loaded_pathogen")
    set t_Co=256
    let base16colorspace=256
    colorscheme base16-bright
    set background=dark
endif
