#!/bin/sh
# Add symlinks to $HOME if the XDG Base Directory standard isn't used
lnk () {
    ln -s $PWD/$1 $HOME/
}
lnk .editorconfig
lnk .tmux.conf
lnk .bash_aliases

# Add include section to .gitconfig
if [ -z "$(grep include $HOME/.gitconfig)" ]; then
   echo "\
[include]
    path = ~/.config/.gitconfig.include
">> $HOME/.gitconfig
fi
