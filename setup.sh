#!/bin/sh
# Add symlinks to $HOME
stow -R */ -t ~/ 2>/dev/null

# Add include section to .gitconfig
if [ -z "$(grep include $HOME/.gitconfig)" ]; then
   echo "\
[include]
    path = ~/.config/.gitconfig.include
">> $HOME/.gitconfig
fi
