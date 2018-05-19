export ZSH=~/.oh-my-zsh
dotfiles=~/Documents/Other/dotfiles
skip_global_compinit=1
ZSH_DISABLE_COMPFIX=true
DISABLE_UNTRACKED_FILES_DIRTY="true"

source ~/Documents/Other/dotfiles/sandboxd

DEFAULT_USER=jonlucadecaro
ZSH_THEME="powerlevel9k/powerlevel9k"
HYPHEN_INSENSITIVE="true"
MENU_COMPLETE="true"
DISABLE_UPDATE_PROMPT="true"
plugins=(brew osx pip)

source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator time)

for file in $dotfiles/.{fzf.zsh,export,alias,functions,inputrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;