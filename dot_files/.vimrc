set nocompatible
set shell=bash\ --login
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gioele/vim-autoswap'
Plugin 'scrooloose/nerdtree'
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
call vundle#end()
:syntax on
:colorscheme koehler
:set number
:set ruler
:set expandtab
:set smarttab
:set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 2.

:set shiftwidth=2    " Indents will have a width of 2

:set softtabstop=2   " Sets the number of columns for a TAB
:set autochdir       " Lets vim open other files in the
                     " directory of the file it is currently working on
                     " instead of :e some/path/file2.txt when editing some/path/file1.txt,
                     " it's simply :e file2.txt
:set nocp            " set no compatibility
