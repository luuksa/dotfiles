let mapleader = ","
set nocompatible
filetype plugin on

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/Vimchant'
Plug 'morhetz/gruvbox'

syntax on
set number relativenumber
set wildmode=longest,list,full

let g:vimchant_spellcheck_lang = 'fi'
map ^T :w!<CR>:!aspell check %<CR>:e! %<CR> 
