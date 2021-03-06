" ========================================
" Common Plugins
" ========================================
Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'ddollar/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
Plug 'Lokaltog/vim-easymotion'
Plug 'bronson/vim-trailing-whitespace'
Plug 'rking/ag.vim'
Plug 'scrooloose/syntastic'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'osyo-manga/vim-precious'
Plug 'editorconfig/editorconfig-vim'

" ========================================
" Syntaxes
" ========================================
" All in one
Plug 'sheerun/vim-polyglot'
let g:polyglot_disabled = ['elm']

" JavaScript
Plug 'flowtype/vim-flow'

" Haskell
Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'eagletmt/ghcmod-vim'
Plug 'Twinside/vim-hoogle'
Plug 'eagletmt/neco-ghc'

" PureScript
Plug 'frigoeu/psc-ide-vim'

" HTML
Plug 'gregsexton/matchtag'

" Elm
Plug 'ElmCast/elm-vim'

" ========================================
" Appearance and Usability
" ========================================

" Color Scheme
Plug 'drewtempelmeyer/palenight.vim'
let g:palenight_terminal_italics=1

" Enjoy some hard time!
Plug 'takac/vim-hardtime'