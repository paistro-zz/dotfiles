#	          o     |                   o|        |     
#	,---.,---..,---.|--- ,---.,---.,---..|    ,---|,---.
#	|   |,---||`---.|    |    |   ||   |||    |   ||   |
#	|---'`---^``---'`---'`    `---'`---|``---'`---'`---'
#	|                              `---'                

#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export VISUAL=nvim
export EDITOR="$VISUAL"

export NNN_FIFO=/tmp/nnn.fifo
export NNN_BMS="D:$HOME/Downloads;d:$HOME/Documentos;i:$HOME/Imagens;c:$HOME/.config;"
export NNN_PLUG='p:preview-tui'
