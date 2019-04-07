" Colors
execute pathogen#infect()

" set color
colorscheme badwolf 

" Haskell IDE Engine
let g:LanguageClient_serverCommands={ 'haskell': ['hie-wrapper'] }
let g:LanguageClient_loadSettings=$HOME."/config/nvim/settings.json"

"haskell settings 
let g:haskell_classic_highlighting = 1
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 2
let g:haskell_indent_where = 2
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 2
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
let g:haskell_indent_case_alternative = 1
let g:cabal_indent_section = 2

"Open NERDTree when nvim starts
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Use deoplete.
let g:deoplete#enable_at_startup = 1

"Toggle NERDTree with Ctrl-N
map <C-n> :NERDTreeToggle<CR>

"Show hidden files in NERDTree
let NERDTreeShowHidden=1

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

" space open/closes folds
nnoremap <space> za

" Replace Esc with double semicolon 
inoremap ;; <Esc>

" fold based on indent level
set foldmethod=indent
  
" Persistent Undo
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000
