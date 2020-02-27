"
"  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
"  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
" ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
" ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██
" ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
" ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
" ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
"    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░
"          ░    ░  ░    ░ ░        ░   ░         ░
"                                 ░
"
syntax enable
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
Plug 'tomasr/molokai' " color scheme
Plug 'vifm/vifm.vim'  " vifm file manager
call plug#end()

" Disable arrow movement, set to resize panes
nnoremap <Up>    :resize +1<CR>
nnoremap <Down>  :resize -1<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" color scheme
set termguicolors
" the configuration options should be placed before `colorscheme edge`
let g:edge_style = 'neon'
let g:edge_disable_italic_comment = 1
colorscheme molokai

set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set expandtab                   " expand tabs by default (overloadable per file type later)
set ignorecase                  " ignore case when searching
set mouse=a                     " enable mouse (selection, resizing windows)
set noerrorbells                " don't beep
set number                      " always show line numbers
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set shiftwidth=2                " number of spaces to use for autoindenting
set showmode                    " always show what mode we're currently editing in
set smartcase                   " ignore case if search pattern is all lowercase
set softtabstop=2               " when hitting <BS>, pretend like a tab is removed, even if spaces
set tabstop=2                   " a tab is X spaces
set textwidth=100
" set timeout timeoutlen=200 ttimeoutlen=100
set visualbell                  " don't beep

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

let mapleader = ","
" Fast saves
nmap <leader>w :w!<cr>
" Reload config file
nnoremap ,r :so $MYVIMRC<CR>
" hide highlighting
nnoremap ,<Esc> :nohl<CR>
" next tab
nnoremap <silent> ,t :tabnext<CR>

"easier window navigation
nmap <C-h> :wincmd h<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-k> :wincmd k<CR>
nmap <C-l> :wincmd l<CR>

" Open splits
map vs :vsplit<cr>
nmap hs :split<cr>

" Terminal Mode
autocmd TermOpen * startinsert " auto start terminal mode (type command)


" Language Server
"packadd nvim-lsp
"lua require'nvim_lsp'.tsserver.setup{}

"nnoremap <silent> gd <cmd>lua  vim.lsp.buf.declaration()<CR>
"nnoremap <silent> gh <cmd>lua  vim.lsp.buf.hover()<CR>
"nnoremap <silent> <c-]> <cmd>lua  vim.lsp.buf.definition()<CR>
"nnoremap <silent> gD <cmd>lua  vim.lsp.buf.implementation()<CR>
"nnoremap <silent> ,t <cmd>lua  vim.lsp.buf.signature_help()<CR>
"nnoremap <silent> 1gD <cmd>lua  vim.lsp.buf.type_definition()<CR>
"nnoremap <silent> gr <cmd>lua  vim.lsp.buf.references()<CR>

" Use LSP omni-completion in Typescript files.
"autocmd Filetype typescript setlocal omnifunc=v:lua.vim.lsp.omnifunc
"
" GUI MODE
"
set linespace=15
echo "Here we go! Have a wanderful day! :)"
