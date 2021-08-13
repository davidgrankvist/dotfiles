#!/bin/sh
# Add symlinks to $HOME if the XDG Base Directory standard isn't used
lnk () {
    ln -s $PWD/$1 $HOME/
}
lnk .editorconfig
lnk .tmux.conf
