syntax on
filetype on
filetype indent on
filetype plugin on
set nocompatible

set number
" set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

autocmd BufWritePre * :%s/\s\+$//e

set autoindent

" Setup vundle
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" Bundles
" Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
Plugin 'SingleCompile'
Plugin 'Tagbar'
Plugin 'The-NERD-tree'
Plugin 'abijr/colorpicker'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'gmarik/vundle'
Plugin 'guns/vim-clojure-static'
Plugin 'hlissner/vim-multiedit'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'wincent/Command-T'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'adimit/prolog.vim'

call vundle#end()
filetype plugin indent on

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

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

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
colorscheme Tomorrow-Night
set cursorline
set colorcolumn=80
set hlsearch

" SimpleCompile
nmap <F8> :SCCompile<cr>
nmap <F9> :SCCompileRun<cr>

" Undo dir
set undodir=~/.vim/undodir
set dir=~/.vim/swapdir

" Indentation
vnoremap > >gv
vnoremap < <gv

" Add cyrillic keymaping
set langmap+=чявертъуиопшщасдфгхйклзьцжбнмЧЯВЕРТЪУИОПШЩАСДФГХЙКЛЗѝЦЖБНМ;`qwertyuiop[]asdfghjklzxcvbnm~QWERTYUIOP{}ASDFGHJKLZXCVBNM,ю\\,Ю\|,
" }}}`

" Add shortcuts for copy and paste from the clipboard
nnoremap <Leader>p "+p
vnoremap <Leader>y "+y

