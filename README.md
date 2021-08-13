# dotfiles
Dotfiles to be cloned into $HOME/.config (the default [XDG_CONFIG_HOME](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)).
## Usage
```bash
cd
git clone git@github.com:davidgrankvist/dotfiles.git temp
mv temp/.git .config/
rm -rf temp
cd .config
git checkout .
./add-links
```
