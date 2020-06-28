" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Colors
execute pathogen#infect()

" set color
colorscheme badwolf 

" set syntax highlighting
syntax enable

" Spaces / Tabs 

" number of visual spaces per TAB
set tabstop=4

" number of spaces in tab when editing
set softtabstop=4

" tabs are spaces
set expandtab

" UI Config
" show line numbers
set number

" show command in bottom bar
set showcmd

" highlight current line 
set cursorline

" load filetype-specific indent files
filetype indent on
filetype on
filetype plugin indent on

" visual autocomplete for command menu
set wildmenu

" redraw only when we need to
set lazyredraw

" highlight matching brackets,...
set showmatch

" Searching 
" seach as characters are entered 
set incsearch

" highlight matches
set hlsearch

" set turn off search highlight to <CTRL-L>
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Folding
" enable folding
set foldenable

" open most folds by default
set foldlevelstart=10

" 10 nested fold max
set foldnestmax=10

" Remap Leader
let mapleader = "\<Space>"

" space open/closes folds
nnoremap <space> za

" Replace Esc with ;;
inoremap ;; <Esc>

" fold based on indent level
set foldmethod=indent
  
" Persistent Undo
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000
