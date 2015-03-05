set nocompatible              " be iMproved
filetype off

set background=dark
set backspace=indent,eol,start
set history=1000
set number
set t_Co=256
set mouse=a
let g:airline_powerline_fonts=1
set guifont=Inconsolata\ for\ Powerline:h18

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

set colorcolumn=120


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles:
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle '29decibel/codeschool-vim-theme'
  colorscheme codeschool
Bundle 'Lokaltog/vim-distinguished'
Bundle 'airblade/vim-gitgutter'
Bundle 'mattn/emmet-vim'
Bundle 'elentok/supertagger'
Bundle 'evanmiller/nginx-vim-syntax'
Bundle 'chrisbra/Recover.vim'
Bundle 'bkad/CamelCaseMotion'

Bundle 'wookiehangover/jshint.vim'
  let JSHintUpdateWriteOnly=1

Bundle 'wting/gitsessions.vim'
nnoremap <leader>gss :GitSessionSave<cr>
nnoremap <leader>gsl :GitSessionLoad<cr>
nnoremap <leader>gsd :GitSessionDelete<cr>

Bundle 'rking/ag.vim'
noremap <Leader>s :Ag <cword><cr>

Bundle 'farseer90718/vim-taskwarrior'
nmap <Leader>t :TW<CR>

Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

Bundle 'compactcode/alternate.vim'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-scripts/ZoomWin'
Bundle 'timheap/linters.vim'

Bundle 'mhinz/vim-startify'
  autocmd FileType startify setlocal cursorline

  let g:startify_enable_special         = 0
  let g:startify_files_number           = 8
  let g:startify_relative_path          = 1
  let g:startify_change_to_dir          = 1
  let g:startify_session_autoload       = 1
  let g:startify_session_persistence    = 1
  let g:startify_session_delete_buffers = 1

  let g:startify_list_order = [
        \ ['   LRU:'],
        \ 'files',
        \ ['   LRU within this dir:'],
        \ 'dir',
        \ ['   Sessions:'],
        \ 'sessions',
        \ ['   Bookmarks:'],
        \ 'bookmarks',
        \ ]

  let g:startify_skiplist = [
        \ 'COMMIT_EDITMSG',
        \ $VIMRUNTIME .'/doc',
        \ 'bundle/.*/doc',
        \ '\.vimgolf',
        \ ]

  let g:startify_bookmarks = [
        \ '~/.vim/vimrc',
        \ '/data/vim/golfing',
        \ ]

  let g:startify_custom_header = [
          \ '             *****                                                                  ',
          \ '          **       **                                                               ',
          \ '         *           *     ****    ****   ***************  ************  *********  ',
          \ '        *   .*= .**   *    ****   ******   ***  **********   ********** ****   **** ',
          \ '        *         .   *     ****  ******  ****         ****      ****  ****     ****',
          \ '        *   .*  ..*   *     **** ******** ***   ***********    *****   *************',
          \ '      **      =**    ,*      *******  *******  ****    ****   ****     ************ ',
          \ '      :*.          .**        ******  ******  ****     **** *****      ****         ',
          \ '         **********           *****    ****    ************************ *********** ',
          \ '          ***   ***            ***     ****     ****** ***  ***********   ********  ',
          \ '',
          \ ]

  hi StartifyBracket ctermfg=240
  hi StartifyFile    ctermfg=147
  hi StartifyFooter  ctermfg=240
  hi StartifyHeader  ctermfg=114
  hi StartifyNumber  ctermfg=215
  hi StartifyPath    ctermfg=245
  hi StartifySlash   ctermfg=240
  hi StartifySpecial ctermfg=240

nmap <Leader>n :Startify<CR>

Bundle 'elzr/vim-json'
autocmd FileType json setlocal foldmethod=json

Bundle 'majutsushi/tagbar'
Bundle 'lukaszkorecki/CoffeeTags'

Bundle 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)

Bundle 'mileszs/ack.vim'
  let g:ackprg = 'ag --nogroup --nocolor --column'

Bundle 'kien/ctrlp.vim'
  let g:ctrlp_working_path_mode='ra'
  let g:ctrlp_extensions = ['tag']
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ --ignore .git5_specs
      \ --ignore review
      \ -g ""'

Bundle 'bling/vim-airline'
  map <C-l> :Bufferlist<CR>

Bundle 'sandeepcr529/Buffet.vim'

" I hate spaces in end of lines or tabs anywhere
match Error /\t\|\s\+$/

" Makefiles work with tabs and not spaces
autocmd FileType make setlocal noexpandtab

" remaps to handle tmux stuff
noremap [OD <C-Left>
noremap! [OD <C-Left>
noremap [OC <C-Right>
noremap! [OC <C-Right>

imap <C-c> <CR><Esc>O

inoremap <silent> <Esc> <C-O>:stopinsert<CR>

au BufRead,BufNewFile *.hamlc set ft=haml

autocmd BufWritePre * :%s/\s\+$//e

autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title

set background=dark

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

set pastetoggle=<F2>

nmap <silent> ,/ :nohlsearch<CR>

" Insert a single character with Ctrl-I
nmap <C-a> a_<esc>r

" Trick if forgot to sudo
cmap w!! %!sudo tee > /dev/null %

map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>

noremap <C-q> :TagbarOpenAutoClose<CR>
noremap <C-t> :Tagbar<CR>

syntax enable
filetype plugin indent on
