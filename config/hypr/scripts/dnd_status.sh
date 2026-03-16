#!/usr/bin/env bash

# Loop infinito para atualização contínua no Waybar

while true; do
	if dunstctl is-paused | grep -q "true"; then
	# Dunst pausado
	echo '{"text": "🔇", "class": "paused", "tooltip": "Não Perturbe (Pausado)"}'
	else
	# Dunst está ativo
	echo '{"text": "🔔", "class": "active", "tooltip": "Notificações Ativas"}'
	fi
	sleep 1
done
