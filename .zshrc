# PowerLevel
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh
export ZSH="/home/cxrlos/.oh-my-zsh"
ENABLE_CORRECTION="true"

# Good stuff
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Had a MacBook, self explanatory 
alias open='xdg-open'

# Damn, starship is really niceee
eval "$(starship init zsh)"

# Promptt
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Vim syntax, cuz emacs syntax sux
set -o vi
