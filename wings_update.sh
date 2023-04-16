while true
do
echo "Creando screen..."
screen -dmS updater_wings
echo "Ejecutando comandos..."
screen -S updater_wings -X stuff 'systemctl stop wings && curl -L -o /usr/local/bin/wings "https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_$([[ "$(uname -m)" == "x86_64" ]] && echo "amd64" || echo "arm64")" && chmod u+x /usr/local/bin/wings && systemctl restart wings\n'
echo "Esperando 5 segundos y matando la screen..."
sleep 5s
screen -S updater_wings -X stuff 'exit\n'
echo "Nos vemos en 7 días!"
sleep 15d
done
