# fallow64's dotfiles

These are my dotfiles. They are managed with [GNU Stow](https://www.gnu.org/software/stow/).

This is not a complete setup, but rather just configuration options for programs that are installed.
For example, there might be a `.config/i3/` folder aswell as a `.config/sway/` folder.

Once you have cloned this repository to a directory like `~/dotfiles` and install Stow,
run `stow .` to setup the dotfiles.

## Stow Installation

| Distro | Install Command         |
|--------|-------------------------|
| Arch   | `sudo pacman -S stow`   |
| Debian | `sudo apt install stow` |
| Fedora | `sudo dnf install stow` |
