call pathogen#infect()
syntax on
filetype plugin indent on
colorscheme solarized
"CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
"colorscheme vim-distinguished
"colorscheme candy.vim
set noswapfile
set listchars=tab:>~,trail:-,nbsp:_
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nocompatible
set modelines=0
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
" set undofile
let mapleader = ","
nnoremap / /\v
vnoremap / /\v
" set relativenumber
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
"nnoremap <tab> %
"vnoremap <tab> %
"stuff to do with wrapping lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
set cursorline
"disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
noremap <up> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
"for idiots like me who regularly hit F1 instead of Esc
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
"again, for butterfingers
nnoremap ; :
"au FocusLost * :wa
"useful Esc remap
inoremap jj <ESC>
"movement between tabs
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
"opening and closing splits
nnoremap <leader>w <C-w>v<C-w>1
nnoremap <leader>q <C-w>q
"movement between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>v V`]
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <Tab> <C-W><C-W>
"shortcut to edit vimrc - super useful
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
"shortcuts for vim-spec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_runner = "os_x_iterm"
"Shortcuts for NERDTree
":command NT NERDTree
"Set default width for NERDTree panel
let g:NERDTreeWinSize = 20
"Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
highlight clear SignColumn
"let NERDTreeMapOpenInTab='\t'
"shortcuts for golden-ratio
"autocmd StdinReadPre * let s:std_in=1
"Less syntax highlighting
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>
"Shortcuts for Emmet
let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
