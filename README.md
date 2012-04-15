# Andrea's dotfiles

Some of the configuration files that live in my home directory, put under version control and shared with the world.
I use Josh Nichols' excellent [Homesick](https://github.com/technicalpickles/homesick) Gem to sync them between my office's Mac and my home's Ubuntu box.

## Install

In order to reproduce this set up, you will need Git, a recent version of Ruby (I am running 1.9.3p125), as well as the Homesick gem.
The latter can be installed by running:

    gem install homesick

Than you can clone this repository by running

    homesick clone afiore/dotfiles

Finally, the configuration files can be symlinked to the current home directory by invoking:

    homesick symlink afiore/dotfiles

