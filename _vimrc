set nu
set ruler
set nocompatible
set foldmethod=syntax
filetype off "required
let mapleader=";"
syntax on

set guifont=Monaco


set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"let Vundle manage vundle
Bundle 'gmarik/vundle'

"my bundles here

"original repos on github

Bundle 'othree/html5.vim'

" vim-scripts repos
Bundle 'ZenCoding.vim'

filetype plugin indent on
filetype indent on 

"vim-snipmate
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/snipmate-snippets'
Bundle 'garbas/vim-snipmate'

Bundle 'jiangmiao/auto-pairs'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/vim-statline'

"colorscheme
Bundle 'desert-warm-256'
Bundle 'gmarik/ingretu'
colorscheme ingretu
