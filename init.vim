"haskell-vim settings 
let g:haskell_classic_highlighting = 1
let g:haskell_indent_if = 2
let g:haskell_indent_case = 1
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

" FZF 
set rtp+=/usr/local/opt/fzf
nnoremap <C-f> :Files<Cr>

"Toggle NERDTree with Ctrl-N
map <C-n> :NERDTreeToggle<CR>

"Show hidden files in NERDTree
let NERDTreeShowHidden=1

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

" Haskell IDE Engine
let g:LanguageClient_serverCommands={ 'haskell': ['hie-wrapper', '--lsp'] }
let g:LanguageClient_loadSettings=$HOME."/config/nvim/coc-settings.json"

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" HIE shortcuts
map <Leader>lk :call LanguageClient#textDocument_hover()<CR>
map <Leader>lg :call LanguageClient#textDocument_definition()<CR>
map <Leader>lb :call LanguageClient#textDocument_references()<CR>

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
