set nocompatible        "required
filetype off            "required


" python3 from powerline.vim import setup as powerline_setup
" python3 powerline_setup()
" python3 del powerline_setup

"=====PLUGIN MANAGER=====

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" The bundles you install will be listed here

Plugin 'tpope/vim-surround'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'cjrh/vim-conda'
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

call vundle#end()            " required


"=====PREFERENCES=====

" Auto source .vimrc after save
autocmd! bufwritepost .vimrc source %

" Syntax and highlighting
filetype plugin indent on
syntax on
colo desert


" Behavior
set encoding=utf-8
set listchars=tab:>-
set list
set scrolloff=999


" Color scheme
let python_highlight_all=1
set  t_Co=256
<<<<<<< HEAD
colo desert
set background=dark


"Showing line numbers and length
set nu
set relativenumber
set nowrap      " don't automatically wrap text while loading
set fo-=t       " don't automatically wrap text while typing


"File explorer
let g:netrw_browse_split = 4
let g:netrw_winsize = 25


"Fold Preferences
"set foldcolumn=3
"setlocal foldmethod=expr


"Mapleader
let mapleader = ","


" Backspace
set bs=2


"=====KEYMAP=====

" Easier split resizing
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>


"Better indentation
vnoremap < <gv
vnoremap > >gv


"Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed


"git bindings
nnoremap <Leader>hn :GitGutterNextHunk<CR>      " hunk next
nnoremap <Leader>hp :GitGutterPrevHunk<CR>      " hunk previous


" Edit and run files
nnoremap <F5> :w<CR>:!clear;python %<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>evon :vsplit $MYVIMRC<cr>:on<cr>
" nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <space> za


"Easy esc
inoremap jk <esc>
inoremap <F5> <ESC>:w<CR>:!clear;python %<CR>   " run file


"split settings
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
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

