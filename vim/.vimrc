" Vim-Plug plugin manager
" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'mhartington/oceanic-next' "color scheme
Plug 'scrooloose/nerdtree' "file tree
Plug 'ryanoasis/vim-devicons' "file icons
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
" Initialize plugin system
call plug#end()

filetype plugin indent on
syntax enable

if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

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
set mouse=a

" autosave
" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2

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
"nmap <C-h> :wincmd h<CR>
"nmap <C-j> :wincmd j<CR>
"nmap <C-k> :wincmd k<CR>
"nmap <C-l> :wincmd l<CR>

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

" Fuzzy Finder
nmap <c-p> :FZF<cr>

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Create/edit file in the current directory
nmap :ed :edit %:p:h/
