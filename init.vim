" Plugins

call plug#begin()

" Seoul256 Colorscheme
Plug 'junegunn/seoul256.vim'

" CoC Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ALE Syntax Checking
Plug 'dense-analysis/ale'

" Fuzzy Finder File Search
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" NerdTree File Display
Plug 'preservim/nerdtree'

" GitGutter Git Diff Tool
Plug 'airblade/vim-gitgutter'

" Git Fugitive Git Status Tool
Plug 'tpope/vim-fugitive'

" LightLine Status Line
Plug 'itchyny/lightline.vim'

" Display indentation
Plug 'Yggdroot/indentLine'

call plug#end()

" Color Scheme
let g:seoul256_background = 234
colo seoul256

" Autocomplete in command menu
set wildmenu

" Use tab and return to navigate autocomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Autocompletion colors
highlight Pmenu ctermbg=2 guibg=2
highlight PmenuSel ctermbg=235 guibg=235

" Status Line
let g:lightline = {
  \ 'colorscheme': 'seoul256',  
  \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
  \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
  \ }

" Show line number and relative line numbers
set number
set relativenumber

" Spaces in a tab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Highlight current line, matching braces, searches
set cursorline
set showmatch
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
