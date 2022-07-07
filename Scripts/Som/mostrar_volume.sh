#	          o     |                   o|        |     
#	,---.,---..,---.|--- ,---.,---.,---..|    ,---|,---.
#	|   |,---||`---.|    |    |   ||   |||    |   ||   |
#	|---'`---^``---'`---'`    `---'`---|``---'`---'`---'
#	|                              `---'                

# Verificando volume atual e notificando
volume=$(amixer sget Master | grep 'Left:' | awk '{print $5}' | tr -d [])
dunstify -r 1 -t 1000 Volume: $volume
