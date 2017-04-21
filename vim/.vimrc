" Dein plugin manager
if &compatible
  set nocompatible
endif
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')
  call dein#begin('~/.config/nvim/dein/plugins')

  call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')
  " color scheme
  call dein#add('mhartington/oceanic-next')
  " ctrlPvim
  call dein#add('ctrlpvim/ctrlp.vim')
  " nerdtree
  call dein#add('scrooloose/nerdtree')
  " devicons
  let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
  let g:webdevicons_conceal_nerdtree_brackets = 1
  call dein#add('ryanoasis/vim-devicons')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
" //Dein plugin manager

" Disable arrow movement, set to resize panes
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" UI
colorscheme OceanicNext 
if (has("termguicolors"))
 set termguicolors
endif
set linespace=15

set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=2                   " a tab is X spaces
set smarttab
set softtabstop=2               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=2                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           " don't beep
set noerrorbells         " don't beep
set autowrite  "Save on buffer switch

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saves
nmap <leader>w :w!<cr>

"Easy escaping to normal model
imap jj <esc>

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"Reload config file
nnoremap ,r :so $MYVIMRC<CR>

"easier window navigation
nmap <C-h> :wincmd h<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-k> :wincmd k<CR>
nmap <C-l> :wincmd l<CR>

" cycle buffers
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" close current buffer and open previous one instead
:nnoremap <silent> <leader>x :bp\|bd #<CR>

nmap <F10> :NERDTreeToggle ~/code<cr>
nmap <F9> :NERDTreeFind<cr>

"Load the current buffer in Chrome
" nmap ,c :!open -a Google\ Chrome<cr>

"Show (partial) command in the status line
set showcmd

" Swap files out of the project root
set backupdir=~/tmp/nvim/backup/
set directory=~/tmp/nvim/swap/

" CtrlP Stuff

" Familiar commands for file/symbol browsing
map <D-p> :CtrlP<cr>
map <C-r> :CtrlPBufer<cr>

" I don't want to pull up these folders/files when calling CtrlP
set wildignore+=*/node_modules/*
set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Create/edit file in the current directory
nmap :ed :edit %:p:h/
