set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles:
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle '29decibel/codeschool-vim-theme'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'airblade/vim-gitgutter'
Bundle 'elentok/supertagger'
Bundle 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'

Bundle 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode='ra'

Bundle 'bling/vim-airline'

" I hate spaces in end of lines or tabs anywhere
match Error /\t\|\s\+$/

" experimental, darkred? FFD9D9?
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" original: /\%81v.*/
match OverLength /\%81v.\+/

" Makefiles work with tabs and not spaces
autocmd FileType make setlocal noexpandtab

" remaps to handle tmux stuff
noremap [OD <C-Left>
noremap! [OD <C-Left>
noremap [OC <C-Right>
noremap! [OC <C-Right>

imap <C-c> <CR><Esc>O

" noremap [3~ gT

set background=dark
set number
set t_Co=256
set mouse=a
let g:airline_powerline_fonts=1 

filetype plugin indent on

" convert tabs to spaces, use 4 spaces (in tab jump and shift)
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set ts=2
set expandtab
set sw=2
set laststatus=2
syntax on
filetype plugin indent on
colorscheme solarized

au BufRead,BufNewFile *.hamlc set ft=haml

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

map <C-n> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
