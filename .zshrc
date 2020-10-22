export ZSH="/home/cxrlos/.oh-my-zsh"
ENABLE_CORRECTION="true"

# Good stuff
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Damn, starship is really niceee
eval "$(starship init zsh)"

# Had a MacBook, self explanatory 
alias open='xdg-open'

# Vim syntax, cuz emacs syntax sux
set -o vi

# Screenfetch prompt
screenfetch -t
