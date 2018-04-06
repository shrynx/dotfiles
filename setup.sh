#!/usr/bin/env bash

# install brew and install git tm,ux and macos preview helpers
if ! type brew > /dev/null; then
 echo "installing brew"
 /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && \
 brew install git tmux neovim gnupg && \
 # https://github.com/sindresorhus/quick-look-plugins
 brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo
fi

# install and setup zsh with spaceship theme
if ! type zsh > /dev/null; then
 echo "installing zsh and setting up zsh spacheship"
 brew install zsh zsh-completions && \
 sh zsh.sh && \
 sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \
 git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" && \ 
 ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" && \
 source ~/.zshrc
fi

# check for node and install walong with some helper utils
if ! type node > /dev/null; then
 echo "installing nvm and node"
 curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash && \
 source ~/.zshrc && \
 nvm install node && \
 echo "installing helpers utils globally via npm" && \
 sh ./node_globals.sh
fi

# check for yarn and install it
if ! type yarn > /dev/null; then
 echo "installing yarn"
 brew install yarn --without-node
fi

# check and install stack
if ! type stack > /dev/null; then
 echo "installing stack"
  curl -sSL https://get.haskellstack.org/ | sh
fi

# check and install purescript
if ! type purs > /dev/null; then
 echo "installing purs and pulp"
  npm install -g purescript pulp bower psc-package
fi

# check and install rustup
if ! type rustup > /dev/null; then
 echo "installing rustup"
  curl https://sh.rustup.rs -sSf | sh
fi

# check and install leiningen
if ! type lein > /dev/null; then
 echo "installing leiningen"
  brew install leiningen
fi