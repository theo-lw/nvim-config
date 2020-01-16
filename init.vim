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

call plug#end()

" ColorScheme
let g:seoul256_background = 234
colo seoul256

" Autocompletion highlight
highlight Pmenu ctermbg=2 guibg=2
highlight PmenuSel ctermbg=235 guibg=235
