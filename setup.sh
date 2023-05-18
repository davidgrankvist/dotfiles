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

# Add source section to .bashrc and .zshrc
for rcfile in .bashrc .zshrc; do
    if [ -f $HOME/$rcfile ]; then
        if [ -z "$(grep '.bash_source' $HOME/$rcfile)" ]; then
           echo "
# Added by dotfiles script
if [ -f ~/.bash_source ]; then
    . ~/.bash_source
fi
">> $HOME/$rcfile
        fi
    fi
done
