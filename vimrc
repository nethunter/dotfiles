set nocompatible              " be iMproved
filetype off

set background=dark
set backspace=indent,eol,start
set history=1000
set number
set t_Co=256
set mouse=a
let g:airline_powerline_fonts=1

" convert tabs to spaces, use 4 spaces (in tab jump and shift)
set ruler
set incsearch
set showcmd

set tabstop=2
set shiftwidth=2
set softtabstop=2
set laststatus=2
set expandtab
set autoindent

set scrolloff=5
set nohid
set encoding=utf-8
set fileencoding=utf-8

set colorcolumn=82


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles:
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
  colorscheme solarized
Bundle 'tpope/vim-fugitive'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle '29decibel/codeschool-vim-theme'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'airblade/vim-gitgutter'
Bundle 'elentok/supertagger'
Bundle 'mattn/emmet-vim'
Bundle 'evanmiller/nginx-vim-syntax'
Bundle 'chrisbra/Recover.vim'
Bundle 'wookiehangover/jshint.vim'
  let JSHintUpdateWriteOnly=1

Bundle 'vim-scripts/ZoomWin'

Bundle 'mileszs/ack.vim'
  let g:ackprg = 'ag --nogroup --nocolor --column'

Bundle 'kien/ctrlp.vim'
  let g:ctrlp_working_path_mode='ra'
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ --ignore .git5_specs
      \ --ignore review
      \ -g ""'

Bundle 'FelikZ/ctrlp-py-matcher'
  let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

Bundle 'bling/vim-airline'
  map <C-l> :Bufferlist<CR>

Bundle 'sandeepcr529/Buffet.vim'

" I hate spaces in end of lines or tabs anywhere
match Error /\t\|\s\+$/


" experimental, darkred? FFD9D9?
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" original: /\%81v.*/
"match OverLength /\%81v.\+/

" Makefiles work with tabs and not spaces
autocmd FileType make setlocal noexpandtab

" remaps to handle tmux stuff
noremap [OD <C-Left>
noremap! [OD <C-Left>
noremap [OC <C-Right>
noremap! [OC <C-Right>

imap <C-c> <CR><Esc>O

au BufRead,BufNewFile *.hamlc set ft=haml

autocmd BufWritePre * :%s/\s\+$//e

autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

set pastetoggle=<F2>

nmap <silent> ,/ :nohlsearch<CR>

" Trick if forgot to sudo
cmap w!! %!sudo tee > /dev/null %

map <C-n> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

syntax enable
filetype plugin indent on
