# dotfiles
Configuration files for `$HOME/.config`.
## Usage
```bash
cd
git clone git@github.com:davidgrankvist/dotfiles.git temp
mv temp/.git .config/
rm -rf temp
cd .config
git checkout .
./add-links.sh
```
