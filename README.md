# `.dotfiles` configuration files repository

## Dependencies

This dotfiles repository is designed to be used with [GNU Stow](https://www.gnu.org/software/stow/) to create symbolic links in the home directory.

## Usage

To install the dotfiles for a particular package, run the following command from the `.dotfiles` directory:

    stow -S <directory>

The `scripts` directory contains shell scripts that will install the packages by platform:
* `common.sh` installs packages used by both Linux and Mac
* `mac.sh` installs packages used on Mac
* TODO: add Windows support
