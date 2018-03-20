# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# rust
export PATH="$HOME/.cargo/bin:$PATH"
# haskell stack
export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  host          # Hostname section
  time          # Time stampts section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_USER_SHOW="always"
SPACESHIP_USER_COLOR="cyan"
SPACESHIP_HOST_SHOW="always"
SPACESHIP_HOST_PREFIX="@ "
SPACESHIP_HOST_COLOR="yellow"
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_12HR=true
SPACESHIP_TIME_FORMAT="%D{%a %b %d}"
SPACESHIP_TIME_COLOR="red"
SPACESHIP_TIME_PREFIX="on "
SPACESHIP_TIME_SUFFIX=" at %B%F{red}%D{%L:%M %p}\n%b%f"
SPACESHIP_DIR_COLOR="green"
SPACESHIP_CHAR_SYMBOL="%B%F{blue}λ%F{green}λ%F{cyan}λ%F{magenta}λ%F{red}λ %b%f"

plugins=(
  git
  zsh-completions
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# User configuration

# editors
alias vim='nvim'

alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

# helpful aliases
alias ..='cd ..'
alias ...='cd ../..'
alias s='sudo'
alias z='clear'
alias p='cd ~/Projects'
alias dn='cd ~/Downloads'
alias d='cd ~/Desktop'
alias ll='ls -hal -G'
alias kraken='open -na "GitKraken" --args -p $(pwd)'
alias rm=trash

# language specific
alias js='cd ~/Projects/javascript'
alias jslib='cd ~/Projects/javascript/libraries'
alias jsproj='cd ~/Projects/javascript/projects'
alias hs='cd ~/Projects/haskell'
alias prs='cd ~/Projects/purescript'
alias eli='cd ~/Projects/elixir'
alias rs='cd ~/Projects/rust'
alias elm='cd ~/Projects/elm'
alias clj='cd ~/Projects/clojure'
alias scratch='cd ~/Projects/scratch'

# work
alias w='cd ~/Work'

#helpful functions
function mdcd() {
  mkdir -p $1 && cd $1
}
function mp() {
  cd ~/Projects && mkdir $1 && cd $1
}
