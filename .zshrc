# setup history size
HISTFILESIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups

# gitconfig script
alias gitconfig="~/dotfiles/config/gitconfig"

# git autocompletion
fpath=(~/.zsh $fpath)
# test -f ~/.git-completion.bash && . $_

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dv="cd ~/Developer"
alias o="open"
alias oo="open ."
alias up="ping 8.8.8.8"

# `ls` colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# List all files colorized in long format
alias ll="ls -l"

# List all files colorized in long format, including dot files
alias la="ls -la"

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Gzip-enabled `curl`
alias gurl="curl --compressed"

# Open a file with visual studio code
alias vs='open -a /Applications/Visual\ Studio\ Code.app'

# Clear derived data dir
alias cleardd='rm -rf ~/Library/Developer/Xcode/DerivedData/*'

# set locales
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# set GEM paths
export GEM_HOME=$HOME/.gem
PATH=$PATH:$GEM_HOME/bin
