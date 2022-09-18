syntax on                   " syntax highlightinginit
filetype plugin indent on   "allow auto-indenting depending on file type

set nobackup
set nowritebackup
set updatetime=300

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set nowrap                  " No wrap
set ignorecase              " case insensitive
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=0            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set breakindent
set number                  " add line numbers
set relativenumber
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                 " set an 80 column border for good coding style
set noshowmode              " hides --insert--
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
set cursorline              " highlight current cursorline
set scrolloff=15            " Keep sum lines on screen
set splitright              " Add new splits to right
set splitbelow              " Add new splits to below
set completeopt=menu,menuone,noselect
let mapleader = "\<Space>"  " Space as leader key
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
set backupdir=~/.cache/vim " Directory to store backup files.
set signcolumn=number

" colorschemes
if (has("termguicolors"))
    set termguicolors
endif
