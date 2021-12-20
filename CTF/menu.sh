#!/bin/bash
function echo_menu(){
	clear
	echo -e "Name : --- 
Last Name : ---- 
Project : Project_CTF 

<><><><>><><><><><><><><><><><><><><>><><><><><><><><><><><><><><>><><><><><><><><><><><><><><>><><><><><>
***  @@@@                   @@@    @@@@@@@@@@@@      @@@@              @@       @@              @@    ***
**   @@ @@                @@ @@    @@                @@ @@             @@       @@              @@     **
**   @@   @@            @@   @@    @@                @@   @@           @@       @@              @@     **
**   @@     @@         @@    @@    @@                @@     @@         @@       @@              @@     **
**   @@      @@@     @@      @@    @@@@@@@@@@@@      @@       @@       @@       @@              @@     **
**   @@        @@  @@        @@    @@                @@        @@      @@       @@              @@     **
**   @@          @@@         @@    @@                @@          @@    @@       @@              @@     **
**   @@                      @@    @@                @@            @@  @@       @@              @@     **
***  @@                      @@    @@@@@@@@@@@@      @@              @@@@        @@@@@@@@@@@@@@@@     ***
<><><><>><><><><><><><><><><><><><><>><><><><><><><><><><><><><><>><><><><><><><><><><><><><><>><><><><><>
(1)  Hydra 																							
(2)  Steghide Image 															
(3)  Wireshark
(4)  Show Docker
(0)  Exit
<><><><>><><><><><><><><><><><><><><>><><><><><><><><><><><><><><>><><><><><><><><><><><><><><>><><><><><> \n
Project_CTF > \c "
}

function echo_docker(){
	clear
	sudo docker images		
	echo "
<><><><>><><><><><><><><><><><><><><>><><><><><><><><><><><><><><>><><><><><><><><><><><><><><>><><><><><>	
(1) Reload
(2) Delete Container
(0) Back 
<><><><>><><><><><><><><><><><><><><>><><><><><><><><><><><><><><>><><><><><><><><><><><><><><>><><><><><>
" 
}

echo_menu 

read menu

while [ $menu != '0' ] ;
do

	if [ $menu -eq 1 ];
	then
		chmod +x ./exercise_1/menu_exercise_1.sh
		./exercise_1/menu_exercise_1.sh
		echo_menu

	elif [ $menu -eq 2 ];
	then
		chmod +x ./exercise_2/menu_exercise_2.sh
		./exercise_2/menu_exercise_2.sh
		echo_menu

	elif [ $menu -eq 3 ];
	then
		sudo docker build -t alice ./exercise_3
		gnome-terminal -- /bin/bash  -c  'sudo docker run   -ti alice '
		echo_menu

	elif [ $menu -eq 4 ];
	then
		echo_docker
		echo -e "Delete Image > \c"
		read id_docker
		while [ ! $id_docker == '0' ];
		do
			if [ $id_docker -eq 1 ];
			then
				echo_docker	
				
			elif [ $id_docker -eq 2 ];
			then
				echo -e "Container : \c"
				read id_container
				sudo docker stop $id_container
				echo "Complete kill $id_container"		
			else
				sudo docker rmi -f  $id_docker
			fi
			echo -e "Delete Image > \c"
			read id_docker
		done
		echo_menu
	fi
	read menu
done
clear