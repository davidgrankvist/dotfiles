#!/bin/sh
# Remove symlinks from $HOME
stow -D */ -t ~/ 2>/dev/null
