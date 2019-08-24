"=====PLUGIN MANAGER====="

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" The bundles you install will be listed here

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-surround', {'rtp': 'tpope/vim-surround'}

call vundle#end()            " required


"=====PREFERENCES====="

filetype off
filetype plugin indent on
syntax on

set encoding=utf-8
set nu
set relativenumber
"set backupdir=~/vimfiles/tmp,.
"set directory=~/vimfiles/tmp,.
set pastetoggle=<F10>
set expandtab
set listchars=tab:>-
set list
set splitbelow
set splitright
set nocompatible
set background=dark
"set foldcolumn=3
"setlocal foldmethod=expr


"bindings
let python_highlight_all=1
let mapleader = ";"


nnoremap <F5> :w<CR>:!clear;python %<CR>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <space> za

inoremap jk <esc>
inoremap <F5> <ESC>:w<CR>:!clear;python %<CR>

"split navigations
nnoremap <C-J> <C-W><C-J> nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
noremap <C-]> g<C-]>


"File specific settings
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.cpp set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.c set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.h set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.hpp set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.js,*.html,*.css: set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix

