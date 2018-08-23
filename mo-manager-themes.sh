#!/bin/bash
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
  sudo rm skeleton.html
	wget https://doc-04-00-docs.googleusercontent.com/docs/securesc/d1ibgdk8cmi2teg1rrg47ua4rt6te0bs/ru9m0qqp5h8mu1rgrhsk6c92m7upr8kv/1535047200000/10946459356008990870/10946459356008990870/1di_-3UUfcy4c6rUHjjzin8w5nGDDa1Th?e=download&nonce=007ftku38bu3c&user=10946459356008990870&hash=j17kjn1qt422vp2u6rqv5eo32jiii1ue
dialog --infobox "...Manager theme Blue and Red se instalo correctamente!..." 25 55 ; sleep 5 
}


#########################################################################
# funcion install Manager theme Oscuridad ;-) #
function manager_install_oscuridad() {                                          
dialog --infobox "...Instalando Manager theme Oscuridad..." 25 55 ; sleep 5
cd /opt/masos/supplementary/retropie-manager/project/templates/
  sudo rm skeleton.html
  wget https://doc-0c-00-docs.googleusercontent.com/docs/securesc/d1ibgdk8cmi2teg1rrg47ua4rt6te0bs/bnvvtnce5v70tvqg3t5e6qsaid3bitk4/1535061600000/10946459356008990870/10946459356008990870/1-sNDxg5duftk7xu82md-vigQ9imLYF1J?e=download
dialog --infobox "...Manager theme Oscuridad se instalo correctamente!..." 25 55 ; sleep 10
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