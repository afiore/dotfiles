# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="norm"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby redis-cli rails3 rake rvm thor bundler)

source $ZSH/oh-my-zsh.sh


# add node to the path
export PATH=/usr/local/bin:$PATH

#add android sdk tools to the path

# paths
export PATH="/usr/local/bin:$HOME/.rvm/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
#$HOME/.rvm/gems/ruby-1.9.2-p290/bin"

# Customize to your needs...
export PATH=/usr/lib/postgresql/9.1/bin/:$PATH



[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# load npm completion
#source $HOME/.zsh/npm
#fpath=(~/.zsh/Completion $fpath)
#
##jshint config
#export JS_CMD=$HOME/local/node/bin/node

#export NODE_PATH=/usr/local/lib/jsctags/:$NODE_PATH
export EDITOR=vim


# Tmuxminator gem
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
