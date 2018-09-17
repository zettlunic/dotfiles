export PATH=/usr/local/bin:$PATH

# increase history size
HISTFILESIZE=10000000

alias swift="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift"

# gitconfig script
alias gitconfig="~/sh-scripts/gitconfig"

# git autocompletion
test -f ~/.git-completion.bash && . $_

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/projects"
alias o="open"
alias oo="open ."
alias gopony="ponyd serve --listen-interface=127.0.0.1"

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

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; gem update'

# Open a file with visual studio code
alias vs='open -a /Applications/Visual\ Studio\ Code.app'

# Clear derived data dir
alias cleardd='rm -rf ~/Library/Developer/Xcode/DerivedData/*'

# Add GEM_HOME to PATH so bundler doesn't install to system gems
export GEM_HOME=$HOME/.gem
PATH=$PATH:$HOME/.gem/bin
