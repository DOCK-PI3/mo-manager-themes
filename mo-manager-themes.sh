#!/bin/bash
#Scrip unico para MasOS-Manager ,idea del script por Mabedeep miembro de mi arcade spain
rp_module_id="mo-manager-themes"
rp_module_desc="MasOS Manager instalador de temas extras"
rp_module_section=""
infobox= ""
infobox="${infobox}_______________________________________________________\n\n"
infobox="${infobox}\n"
infobox="${infobox}\nMasOS Manager temas. \n\n"
infobox="${infobox}\n"
infobox="${infobox}\n"
infobox="${infobox}\n"
infobox="${infobox}\n"
infobox="${infobox}Se descargan y se configuran automaticamente....\n"
infobox="${infobox}\n"

dialog --backtitle "MasOS Manager temas extras" \
--title "MasOS Manager temas extras Script (by mabedeep)" \
--msgbox "${infobox}" 35 110



function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "Que theme te gustaria instalar?" 25 75 20 \
            1 "Manager theme Blue and Red" \
			2 "Manager theme Oscuridad" \
			3 "Manager theme MasOS Pro" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) manager_install_blueandred  ;;
			2) manager_install_oscuridad  ;;
			3) manager_install_masospro  ;;
            *)  break ;;
        esac
    done
}
#########################################################################
# funcion install Manager theme Blue and Red  ;-) #
function manager_install_blueandred() {                                          #
dialog --infobox "...Instalando Manager theme Blue and Red..." 25 55 ; sleep 3
cd /opt/masos/supplementary/retropie-manager/project/templates/
 # sudo rm skeleton.html
 wget http://masos.ga/?download=158 &&  mv /opt/masos/supplementary/retropie-manager/project/templates/index.html\?download\=158 skeleton.html
 sudo chown -R pi:pi /opt/masos/supplementary/retropie-manager/project/templates/
dialog --infobox "...Manager theme Blue and Red se instalo correctamente!..." 25 55 ; sleep 5 
}


#########################################################################
# funcion install Manager theme Oscuridad ;-) #
function manager_install_oscuridad() {                                          
dialog --infobox "...Instalando Manager theme Oscuridad..." 25 55 ; sleep 5
cd /opt/masos/supplementary/retropie-manager/project/templates/
  # sudo rm skeleton.html
  wget http://masos.ga/?download=162 &&  mv /opt/masos/supplementary/retropie-manager/project/templates/index.html\?download\=162 oscuridad.zip
  unzip oscuridad.zip
  sudo cp oscuridad/skeleton.html /opt/masos/supplementary/retropie-manager/project/templates/
  sudo chown -R pi:pi /opt/masos/supplementary/retropie-manager/project/templates/
dialog --infobox "...Manager theme Oscuridad se instalo correctamente!..." 25 55 ; sleep 5
# ---------------- FIN DEL CODIGO ------------ #
}


#########################################################################
# funcion install Manager theme MasOS Pro ;-) #
function manager_install_masospro() {                                          
dialog --infobox "...Instalando Manager theme MasOS Pro..." 25 55 ; sleep 5
cd /opt/masos/supplementary/retropie-manager/project/templates/
  # sudo rm skeleton.html
  
dialog --infobox "...Manager theme MasOS Pro se instalo correctamente!..." 25 55 ; sleep 10
# ---------------- FIN DEL CODIGO ------------ #
}
main_menu