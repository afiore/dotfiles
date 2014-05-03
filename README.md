# Andrea's dotfiles

Some of the configuration files that live in my home directory, put under version control.

## Install

All the files under the `targets` can be symlinked into the user's home directory
by just running:

    make

Conversely, running `make clean` will remove all the dot files symlinks.
Note that, in order to avoid data losses, `make clean` will not try
to cleanup any folders.
