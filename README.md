# dotfiles
Configuration files for `$HOME`.

### How does it work?
These dotfiles are managed with symlinks by using [stow](https://www.gnu.org/software/stow/).

## Usage

### Linux / Mac
First you need to install `stow`. The easiest way is by using a package manager like `apt` or `brew`.

Then clone the repository and run the setup script.
```bash
git clone git@github.com:davidgrankvist/dotfiles.git
cd dotfiles
./setup.sh
```

To update the symlinks, rerun the setup
```bash
./setup.sh
```

To remove them, run
```bash
./clean.sh
```

### Windows

See the files under windows/. This is just a backup for now with no setup scripts.