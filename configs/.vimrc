call plug#begin('~/.vim/plugged')
source ~/.vim/package.vim
call plug#end()

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

filetype plugin indent on
syntax on

source ~/.vim/default.vim
source ~/.vim/setting.vim
source ~/.vim/command.vim
source ~/.vim/key.vim
