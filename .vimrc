set nocompatible        "required
filetype off            "required


"=====PLUGIN MANAGER====="

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" The bundles you install will be listed here

Plugin 'Lokaltog/powerline'
Plugin 'tpope/vim-surround'
Plugin 'davidhalter/jedi-vim'

call vundle#end()            " required


"=====PREFERENCES====="

filetype plugin indent on
syntax on

set encoding=utf-8
set nu
set relativenumber
set scrolloff=999
"set pastetoggle=<F10>
set expandtab
set listchars=tab:>-
set list
set nocompatible

"Background Preferences
set  t_Co=256
set background=dark

"Fold Preferences
"set foldcolumn=3
"setlocal foldmethod=expr

"set backupdir=~/vimfiles/tmp,.
"set directory=~/vimfiles/tmp,.


"Bindings
let python_highlight_all=1
let mapleader = "\\"


nnoremap <F5> :w<CR>:!clear;python %<CR>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <space> za

inoremap jk <esc>
inoremap <F5> <ESC>:w<CR>:!clear;python %<CR>

"split settings
set splitbelow
set splitright
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

