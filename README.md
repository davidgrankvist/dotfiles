# dotfiles
Config files for the home directory.

## About
The purpose of this repo is to keep configs in sync across different machines and operating systems.

## Usage

Clone the repo and run the scripts for the target OS. The setup scripts don't make any assumptions about where the repo was cloned to.

```bash
git clone https://github.com/davidgrankvist/dotfiles.git
```

### Linux / Mac
These dotfiles are managed with symlinks by using [stow](https://www.gnu.org/software/stow/). The easiest way to install it is by using a package manager like `apt` or `brew`.

Then run the setup script.
```bash
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

The Windows-specific parts are under `windows/`. They use custom scripts to create symlinks, so you don't need to install anything to run them.

Files under `windows/windows_home` are mapped to the corresponding paths in the home directory. A few links are picked from outside of `windows/` and need to be manually specified in `windows/mappings.ps1`.

Run the setup script.
```powershell
cd dotfiles/windows
.\setup.ps1
```

To update the symlinks, rerun the setup
```powershell
.\setup.ps1
```

To remove them, run
```powershell
.\clean.ps1
```
