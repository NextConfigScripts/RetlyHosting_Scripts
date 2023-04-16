clear 
rm -r wings_update
echo "Creando carpeta..."
mkdir wings_update
cd wings_update
echo "Descargando archivo..."
wget https://raw.githubusercontent.com/NextConfigScripts/RetlyHosting_Scripts/main/wings_update.sh
echo "Creando screen..."
screen -dmS screen_wings
chmod +x wings_update.sh
screen -S updater_wings -X stuff 'bash wings_update.sh\n'
screen -S updater_wings -X stuff 'rm instalacion_updater.sh'
clear
echo "


"
echo "¡Todo listo! Nota: no mates al servicio screen"
