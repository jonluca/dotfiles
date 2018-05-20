# Local and Global vars
dotfiles=~/Documents/Other/dotfiles
export ZSH=~/.oh-my-zsh

# Zsh and Oh-My-Zsh vars
skip_global_compinit=1
ZSH_DISABLE_COMPFIX=true
DISABLE_UNTRACKED_FILES_DIRTY="true"
DEFAULT_USER=jonlucadecaro
ZSH_THEME="powerlevel9k/powerlevel9k"
HYPHEN_INSENSITIVE="true"
MENU_COMPLETE="true"
DISABLE_UPDATE_PROMPT="true"

source $dotfiles/sandboxd
source $ZSH/oh-my-zsh.sh
# Oh My Zsh plugins
plugins=(brew osx pip)
# Powerlevel9k Right prompt
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator time)

# Load dotfiles
for file in $dotfiles/.{fzf.zsh,export,alias,functions,inputrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;