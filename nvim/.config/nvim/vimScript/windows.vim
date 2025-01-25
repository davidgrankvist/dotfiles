"$MYVIMRC doesn't follow symlinks, so specify path via $HOME instead
command Godot :tabnew $HOME\source\repos\dotfiles | :lcd $HOME\source\repos\dotfiles | :Ex
command Govim :tabnew $HOME\source\repos\dotfiles\nvim\.config\nvim | :lcd $HOME\source\repos\dotfiles\nvim\.config\nvim | :Ex
command Sovim :so $MYVIMRC
