# Path to oh-my-zsh
export ZSH="/home/cxrlos/.oh-my-zsh"
ENABLE_CORRECTION="true"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Good stuff
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Had a MacBook, self explanatory 
alias open='xdg-open'

# Prompt
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Vim syntax, cuz emacs syntax sux
set -o vi

# Screenfetch prompt
screenfetch -t
