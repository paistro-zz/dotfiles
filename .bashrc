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
alias nnn='nnn -e'
alias cp='rsync -ah --info=progress2'
alias pacman='sudo pacman'
alias cwatch='cargo watch -cx run'
alias cleanup='pacman -Qtdq | pacman -Rns -'

alias bspwmc='nvim ~/.config/bspwm/bspwmrc'
alias sxhkdc='nvim ~/.config/sxhkd/sxhkdrc'
alias kittyc='nvim ~/.config/kitty/kitty.conf'
alias picomc='nvim ~/.config/picom/picom.conf'
alias dunstc='nvim ~/.config/dunst/dunstrc'
alias nvimc='nvim ~/.config/nvim/init.vim'
alias rofic='nvim ~/.config/rofi/config.rasi'
alias profilec='nvim ~/.bash_profile'
alias bashc='nvim ~/.bashrc'

if [ -f /usr/share/nnn/quitcd/quitcd.bash_zsh ]; then
    source /usr/share/nnn/quitcd/quitcd.bash_zsh
fi

PS1='\[\e[0;1;38;5;231m\]\u\[\e[0;1;92m\]@\[\e[0;1;92m\]\H \[\e[0;1;95m\]\w \[\e[0;1;96m\] $(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[0;1;38;5;231m\]$ \[\e[0m\]'
