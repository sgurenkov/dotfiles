#
# Kitty term Completion
#

autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin


#
# Bindings
#

bindkey -v # emacs bindings, set to -v for vi bindings

#
# Other
#

source $HOME/.zsh/aliases
source $HOME/.zsh/path
source $HOME/.zsh/fzf


source /Users/stan.gurenkov/Library/Preferences/org.dystroy.broot/launcher/bash/br

source /Users/stan/Library/Preferences/org.dystroy.broot/launcher/bash/br
