#	          o     |                   o|        |     
#	,---.,---..,---.|--- ,---.,---.,---..|    ,---|,---.
#	|   |,---||`---.|    |    |   ||   |||    |   ||   |
#	|---'`---^``---'`---'`    `---'`---|``---'`---'`---'
#	|                              `---'                

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa --icons'
alias pacman='sudo pacman'
alias nnn='nnn -e'

alias bspwmc='nvim ~/.config/bspwm/bspwmrc'
alias sxhkdc='nvim ~/.config/sxhkd/sxhkdrc'
alias kittyc='nvim ~/.config/kitty/kitty.conf'
alias bashc='nvim ~/.bashrc'
alias picomc='nvim ~/.config/picom/picom.conf'
alias dunstc='nvim ~/.config/dunst/dunstrc'
alias profilec='nvim ~/.bash_profile'

PS1='\[\e[0;1;38;5;231m\]\u\[\e[0;1;92m\]@\[\e[0;1;92m\]\H \[\e[0;1;95m\]\w \[\e[0;1;96m\] $(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[0;1;38;5;231m\]$ \[\e[0m\]'
