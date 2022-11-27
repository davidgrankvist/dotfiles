# dotfiles
Configuration files for `$HOME`.

### How does it work?
These dotfiles are managed with symlinks by using [stow](https://www.gnu.org/software/stow/).

`stow` is pro 😎

## Usage
First you need to install `stow`. The easiest way is by using a package manager like `apt` or `brew`.

Then clone the repository and run the setup script.
```bash
git clone git@github.com:davidgrankvist/dotfiles.git
cd dotfiles
./setup.sh
```

If you need to update the symlinks later, rerun the setup
```bash
./setup.sh
```

If you need to remove the symlinks without adding new ones, run this `stow` command
```bash
stow -D */ -t ~/ 2>/dev/null
```
