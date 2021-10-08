set nocompatible        "required
filetype off            "required

let mapleader = ","


"=====PLUGIN MANAGER=====
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" The bundles you install will be listed here

Plugin 'altercation/vim-colors-solarized' 
let g:solarized_termcolors=16
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tpope/vim-surround'
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1
Plugin 'jiangmiao/auto-pairs'

Plugin 'easymotion/vim-easymotion'

call vundle#end()            " required


"=====PREFERENCES=====

" Behavior
set listchars=tab:>-
set list
set scrolloff=999
set bs=2
set path+=**
set wildmenu


" Visual
"set t_Co=256
set background=dark
syntax on
colo solarized		" change to desert if solarized is not installed
filetype plugin indent on
let python_highlight_all=1
set nu
set relativenumber


" Text wrapping
set nowrap      " don't automatically wrap text while loading
set fo-=t       " don't automatically wrap text while typing


" File explorer
let g:netrw_browse_split = 4
let g:netrw_winsize = 25


" Fold Preferences
set foldcolumn=3
setlocal foldmethod=expr


" Better search
set ignorecase
set smartcase


" Disable backup
set nobackup
set nowritebackup
set noswapfile

  
" Better copy & paste
set clipboard=unnamed


" Add tags
set tags+=~/.vim/tags/*-tags/tags


"=====KEY BINDINGS=====

" Better indentation
vnoremap < <gv
vnoremap > >gv

" Development mappings

" Additional functionality
inoremap jk <ESC>
vnoremap jk <ESC>
inoremap <F5> <ESC>:w<CR>:!clear;python %<CR>   " run file
nnoremap <Leader>ev :e $MYVIMRC<CR>
nnoremap <space> za

" Quick characters for making lists
inoremap kk <c-v>u2713
inoremap xx <c-v>u2715

" Project setup
"let $PROJDIR = fnameescape('$HOME\Atos\B&PS Dashboards - BI & Analytics - Documents\mgtdash')
"let $AIPROD = fnameescape('$HOME\OneDrive - Atos\Projects\AI_demo')
"nnoremap <Leader>cd :cd $AIPROD<CR>:pwd<CR>

"Split settings
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
noremap <C-]> g<C-]>


"=====AUTOCOMMANDS=====

" Autocomands
autocmd! bufwritepost .vimrc source %

"File specific settings
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.cpp set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.c set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.h set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.hpp set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.js,*.html,*.css: set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.md set filetype=markdown.pandoc

