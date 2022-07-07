#	          o     |                   o|        |     
#	,---.,---..,---.|--- ,---.,---.,---..|    ,---|,---.
#	|   |,---||`---.|    |    |   ||   |||    |   ||   |
#	|---'`---^``---'`---'`    `---'`---|``---'`---'`---'
#	|                              `---'                

# Verificando o ultimo volume
ultimo_volume=$(cat ~/Documentos/Scripts/Som/ultimo_volume.txt)

# Verificando se o volume está em 0%
# Caso for 0%: Setando volume para o ultimo volume
# Senão: Substituindo o ultimo volume pelo volume atual
# e setando o atual para 0%
if amixer sget Master | grep 'Left: Playback 0'; then
	amixer set Master $ultimo_volume
else
	amixer sget Master | grep 'Left:' | awk '{print $5}' | tr -d [] > ~/Documentos/Scripts/Som/ultimo_volume.txt
	amixer set Master 0%
fi

# Notificando volume atual
~/Documentos/Scripts/Som/mostrar_volume.sh
