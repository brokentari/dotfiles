	#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

gitcolor='\e[0;32m'

function gitPrompt() {
	if [[ -d ".git" ]]; then
		echo -e "[${gitcolor}$(git branch | grep "*" | sed "s/* //")\e[0m]"
	fi
}

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1=$'\[\e[1m\]\u256D\u2574\[\e[0m\] \033[1;32m\]\u@\h\[\e[0m ${PWD/#$HOME/\~} $(gitPrompt)\n\u2570\u2574 $ '

#neofetch --ascii ~/ascii.txt
neofetch --source ~/.config/neofetch/neofetch-img/img.png --image_size 200

eval "$(thefuck --alias)"
