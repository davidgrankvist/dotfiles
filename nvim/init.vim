" check for vscode-neovim https://github.com/vscode-neovim/vscode-neovim
if exists('g:vscode')
    runtime vscode.vim
else
    runtime main.vim
endif
