syntax on
filetype off
set nocompatible

set number
" set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

autocmd BufWritePre * :%s/\s\+$//e

filetype plugin on

set autoindent

" Setup vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc('~/.vim/vundle')

" Bundles
Bundle 'Lokaltog/vim-powerline'
Bundle 'SingleCompile'
Bundle 'Tagbar'
Bundle 'The-NERD-tree'
Bundle 'abijr/colorpicker'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'gmarik/vundle'
Bundle 'guns/vim-clojure-static'
Bundle 'hlissner/vim-multiedit'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'jiangmiao/auto-pairs'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'vim-ruby/vim-ruby'
Bundle 'wincent/Command-T'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-notes'
Bundle 'adimit/prolog.vim'

" Code Folding
set foldlevelstart=20
set foldmethod=indent

" Disable gvim toolbars by default
set guioptions-=T
set guioptions-=m>

" Disable netrw
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

" Setup pathogen
execute pathogen#infect()

" Move lines with ctrl + j/k
nnoremap <C-J> :m .+1<CR>==
nnoremap <C-K> :m .-2<CR>==
vnoremap <C-J> :m '>+1<CR>gv=gv
vnoremap <C-K> :m '<-2<CR>gv=gv

" Powerline
let g:Powerline_symbols = 'fancy'

" NERDTree
map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>

" Tagbar
let g:tagbar_compact = 1
let g:tagbar_autofocus = 1

" Use CTRL+S to save file changes
command -nargs=0 -bar Update if &modified
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif

nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <c-s> <c-o>:Update<CR>

" Colors
set  t_Co=256
colorscheme jellybeans
set cursorline
set colorcolumn=80
set hlsearch

" Tab navigation
" nmap <C-S-tab> :tabprevious<cr>
" nmap <C-tab> :tabnext<cr>
" imap <C-S-tab> <ESC>:tabprevious<cr>i
" imap <C-tab> <ESC>:tabnext<cr>i
" nmap <C-t> :tabnew<cr>
" :imap <C-t> <ESC>:tabnew<cr>i
" :map <C-w> :tabclose<cr>

" SimpleCompile
nmap <F8> :SCCompile<cr>
nmap <F9> :SCCompileRun<cr>

" Undo dir
set undodir=~/.vim/undodir
set dir=~/.vim/swapdir

" Watch vimrc and autoreload
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Indentation
vnoremap > >gv
vnoremap < <gv

" Add cyrillic keymaping
set langmap+=чявертъуиопшщасдфгхйклзьцжбнмЧЯВЕРТЪУИОПШЩАСДФГХЙКЛЗѝЦЖБНМ;`qwertyuiop[]asdfghjklzxcvbnm~QWERTYUIOP{}ASDFGHJKLZXCVBNM,ю\\,Ю\|,
" }}}`
