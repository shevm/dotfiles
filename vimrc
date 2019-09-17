set nocompatible        "required
filetype off            "required


"=====PLUGIN MANAGER=====

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" The bundles you install will be listed here


Plugin 'jreybert/vimagit'
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

Plugin 'vim-scripts/indentpython.vim'
Plugin 'tpope/vim-surround'
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

Plugin 'ycm-core/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <Leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

Plugin 'airblade/vim-gitgutter'
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'
nnoremap <Leader>gn :GitGutterNextHunk<CR>
nnoremap <Leader>gp :GitGutterPrevHunk<CR>
nnoremap <Leader>ga :GitGutterStageHunk<CR>
nnoremap <Leader>gu :GitGutterUndoHunk<CR>

call vundle#end()            " required


"=====PREFERENCES=====

" Auto source .vimrc after save
autocmd! bufwritepost .vimrc source %

" Syntax and highlighting
filetype plugin indent on
syntax on
let python_highlight_all=1


" Behavior
set listchars=tab:>-
set list
set scrolloff=999
set bs=2


" Color scheme
let python_highlight_all=1
set  t_Co=256
colo desert
" set background=dark


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


" Mapleader
let mapleader = ","


" Better search
set ignorecase
set smartcase


" Disable backup
set nobackup
set nowritebackup
set noswapfile


"=====KEYMAP=====

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

