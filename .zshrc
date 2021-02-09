export ZSH="/home/cxrlos/.oh-my-zsh"
ENABLE_CORRECTION="true"

# Good stuff
plugins=(git zsh-autosuggestions zsh-syntax-highlighting golang)

source $ZSH/oh-my-zsh.sh
# Had a MacBook, self explanatory 
alias open='xdg-open'
alias vi='nvim'
alias vim='nvim'

# Vim syntax, cuz emacs syntax sux
set -o vi

# Screenfetch prompt
neofetch

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
ZSH_THEME="powerlevel10k/powerlevel10k"
