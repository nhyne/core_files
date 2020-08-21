if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'

call plug#end()



set nocompatible
set shell=bash\ --login
filetype off
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
