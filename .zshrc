export ZSH="/home/cxrlos/.oh-my-zsh"
ENABLE_CORRECTION="true"

# Good stuff
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
# Had a MacBook, self explanatory 
alias open='xdg-open'
alias vi='nvim'
alias vim='nvim'

# Vim syntax, cuz emacs syntax sux
set -o vi

# Screenfetch prompt
neofetch

eval "$(starship init zsh)"

