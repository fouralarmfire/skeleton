execute pathogen#infect()

filetype off

filetype plugin on

syntax on

set nowrap
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set nocompatible
set modelines=0
set autoindent
set showmode
set showcmd
set encoding=utf-8
set ruler
set cursorline
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set laststatus=2
set gcr=a:blinkon0
set backspace=indent,eol,start
set ignorecase
set hlsearch
set ai
set si

set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//

set showmatch
set mat=2

set wildmenu
set wildignore=*.o,*~,*.pyc,*swp

let mapleader = ","
let g:mapleader = ","

set pastetoggle=<leader>p
map <c-space> ?
inoremap <D-s> :w<cr>
nnoremap <C-l> :/\s\+$<cr>
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>^
map <leader>s :w<cr>
map <leader>bc :bw<cr>
map <leader>, :b#<cr>
map <BS> :b#<cr>
map <space> :bn<cr>
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext
map <leader>cd :cd %:p:h<cr>:pwd<cr>
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
map <leader>o :vsp
map <Tab> <C-W>w
map <leader>qw <C-W>q

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:loaded_golden_ratio=1

set background=dark
colorscheme chalk

let g:airline#extensions#tabline#enabled = 1
let g:go_fmt_command = "goimports"

autocmd StdinReadPre 8 let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
autocmd BufWritePre * :%s/\s\+$//e
