# get current branch in git repo
function parse_git_branch() {
  BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
  if [ ! "${BRANCH}" == "" ]
  then
    STAT=`parse_git_dirty`
    echo "(${BRANCH}${STAT})"
  else
    echo ""
  fi
}
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi
# get current status of git repo
function parse_git_dirty {
  status=`git status 2>&1 | tee`
  dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
  untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
  ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
  newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
  renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
  deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
  bits=''
  if [ "${renamed}" == "0" ]; then
    bits=">${bits}"
  fi
  if [ "${ahead}" == "0" ]; then
    bits="*${bits}"
  fi
  if [ "${newfile}" == "0" ]; then
    bits="+${bits}"
  fi
  if [ "${untracked}" == "0" ]; then
    bits="?${bits}"
  fi
  if [ "${deleted}" == "0" ]; then
    bits="x${bits}"
  fi
  if [ "${dirty}" == "0" ]; then
    bits="!${bits}"
  fi
  if [ ! "${bits}" == "" ]; then
    echo " ${bits}"
  else
    echo ""
  fi
}
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# rust
export PATH="$HOME/.cargo/bin:$PATH"
# haskell stack
export PATH=$HOME/.local/bin:$PATH

export PS1="\n\e[1;96m\u \[\e[1;m\]\[\e[m\]@ \[\e[m\]\[\e[1;33m\]\h\[\e[m\] \[\e[m\]on\[\e[m\] \[\e[1;31m\]\d\[\e[m\] \[\e[m\]at\[\e[m\] \[\e[1;31m\]\@\[\e[m\]\n\e[1;92m\w\e[0m \[\e[1;34m\]\`parse_git_branch\`\[\e[m\]\n\[\e[1;34m\]λ\[\e[32m\]λ\[\e[36m\]λ\[\e[35m\]λ\[\e[31m\]λ\[\e[m\] "
# editors
alias vim='nvim'
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
