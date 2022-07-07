#	          o     |                   o|        |     
#	,---.,---..,---.|--- ,---.,---.,---..|    ,---|,---.
#	|   |,---||`---.|    |    |   ||   |||    |   ||   |
#	|---'`---^``---'`---'`    `---'`---|``---'`---'`---'
#	|                              `---'                

# Verificando e trocando o layout
if setxkbmap -query | grep -q 'br'; then
	setxkbmap us
else 
	setxkbmap br
fi

# Formatando a mensagem e notificando o layout atual
mensagem=$(setxkbmap -query | grep 'layout' | awk '{print $2}')
dunstify -r 1 -t 1000 Layout: $mensagem
