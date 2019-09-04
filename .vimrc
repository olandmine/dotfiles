" Vundle
" --------------------------------------------------------------------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugins go here
" ---------------
Plugin 'scrooloose/nerdtree'
"  --------------

call vundle#end()
filetype plugin indent on
" --------------------------------------------------------------------

" Indentation
" --------------------------------------------------------------------
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
"set smartindent
set fileformat=unix
filetype plugin indent on
" --------------------------------------------------------------------


" Line Numbers
" --------------------------------------------------------------------
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set cpoptions+=n
highlight LineNr term=bold cterm=NONE ctermfg=LightBlue ctermbg=NONE
" --------------------------------------------------------------------

" NERDTree
" --------------------------------------------------------------------
autocmd vimenter * NERDTree
" --------------------------------------------------------------------
