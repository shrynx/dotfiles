#!/bin/bash

# Make directory for old files
if [ ! -d "$PWD/old" ]; then
  mkdir old
else
  mv old older
  mkdir old
  mv older old
fi

# copy dotfiles
shopt -s dotglob
for f in ./configs/*; do
  filename=$(basename $f)
  path=$PWD/$f

  mv $HOME/$filename ./old
  cp -r $path $HOME
done