# The following lines were added by compinstall

zstyle ':completion:*' auto-description '%d'
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/andrea/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall

#share history among multiple zsh sessions
setopt append_history share_history histignorealldups

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=$HISTSIZE
#bindkey -v
# End of lines configured by zsh-newuser-install
bindkey '^R' history-incremental-search-backward
setopt hist_ignore_all_dups
setopt hist_ignore_space

fpath=( "$HOME/.zfunctions" $fpath )
autoload -U promptinit && promptinit
prompt pure

#always include the --color option when calling ls
alias tmux="TERM=screen-256color tmux"
alias ls="ls -F --color=auto"

export TERM=screen-256color
export PATH="$HOME/.rbenv/bin:$HOME/bin:$HOME/.cabal/bin:$PATH"
export EDITOR=/usr/bin/vim
eval "$(rbenv init -)"
