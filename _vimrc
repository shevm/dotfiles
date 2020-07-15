set nocompatible        "required
filetype off            "required

let mapleader = ","


"=====PLUGIN MANAGER=====

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" The bundles you install will be listed here

Plugin 'vim-airline/vim-airline'
Plugin 'jreybert/vimagit'
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

Plugin 'altercation/vim-colors-solarized'

Plugin 'vim-scripts/indentpython.vim'
Plugin 'tpope/vim-surround'
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

Plugin 'ycm-core/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_confirm_extra_conf=0

Plugin 'airblade/vim-gitgutter'
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'
nmap <Leader>gn <Plug>(GitGutterNextHunk)
nmap <Leader>gp <Plug>(GitGutterPrevHunk)
nmap <Leader>ga <Plug>(GitGutterStageHunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)

Plugin 'majutsushi/tagbar'
nnoremap <silent> <F9> :TagbarOpenAutoClose<CR>

Plugin 'townk/vim-autoclose'

call vundle#end()            " required


"=====CONFIGURATION=====
filetype plugin indent on

" Auto source .vimrc after save
autocmd! bufwritepost .vimrc source %

" Behavior
" {{{
set listchars=tab:>-
set list
set scrolloff=999
set bs=2
set path+=**
set wildmenu
" }}}

" Visual
" {{{
" set t_Co=256
colo solarized
syntax on
let python_highlight_all=1
set nu
set relativenumber
set nowrap      " don't automatically wrap text while loading
set fo-=t       " don't automatically wrap text while typing
" }}}

" netrw preferences
" {{{
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
" }}}

" Fold Preferences
" {{{
set foldcolumn=3
setlocal foldmethod=marker
" }}}

" Better search
" {{{
set ignorecase
set smartcase
" }}}

" Disable backup
" {{{
set nobackup
set nowritebackup
set noswapfile
" }}}

"Better copy & paste
" {{{
set clipboard=unnamed
" }}}

" Add tags
" {{{
" set tags=./tags,tags;$HOME
set tags+=~/.vim/tags/*-tags/tags
" }}}


"=====KEYMAP=====

"Better indentation
" {{{
vnoremap < <gv
vnoremap > >gv
" }}}

"Development mappings
" {{{
inoremap jk <ESC>
vnoremap jk <ESC>
inoremap <F5> <ESC>:w<CR>:!clear;python %<CR>   " run file
nnoremap <Leader>ev :e $MYVIMRC<CR>
nnoremap <space> za
nnoremap <Leader>b Oimport pdb; pdb.set_trace()<ESC>
nnoremap <Leader>t O# TODO 
command! MakeTags !ctags -R .

inoremap kk <c-v>u2713
inoremap xx <c-v>u2715
" }}}

"Launch default directory
" {{{
let $PROJDIR = fnameescape('$HOME\Atos\B&PS Dashboards - BI & Analytics - Documents\mgtdash')
let $AIPROD = fnameescape('$HOME\OneDrive - Atos\Projects\AI_demo')
nnoremap <Leader>cd :cd $AIPROD<CR>:pwd<CR>
" }}}

"Split settings
" {{{
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
noremap <C-]> g<C-]>
" }}}

"Set default encoding for YCM
" {{{
set encoding=utf-8
set tabstop=4
set nolist
set wrap
set linebreak
" }}}

"File specific settings
" {{{
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=119 expandtab autoindent encoding=utf-8 fileformat=unix
au BufNewFile,BufRead *.cpp set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.c set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.h set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.hpp set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.js,*.html,*.css: set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.md setlocal filetype=markdown.pandoc textwidth=80
" }}}


"=====ABBREVIATIONS=====

"Import abbreviations
source ~/.vim/abbr/*.vim

