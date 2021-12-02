#!/bin/bash
function echo_menu(){
clear
echo "

*********************************************************************************************************
***  @@@@                   @@@    @@@@@@@@@@@@      @@@@              @@       @@              @@    ***
**   @@ @@                @@ @@    @@                @@ @@             @@       @@              @@     **
**   @@   @@            @@   @@    @@                @@   @@           @@       @@              @@     **
**   @@     @@         @@    @@    @@                @@     @@         @@       @@              @@     **
**   @@      @@@     @@      @@    @@@@@@@@@@@@      @@       @@       @@       @@              @@     **
**   @@        @@  @@        @@    @@                @@        @@      @@       @@              @@     **
**   @@          @@@         @@    @@                @@          @@    @@       @@              @@     **
**   @@                      @@    @@                @@            @@  @@       @@              @@     **
***  @@                      @@    @@@@@@@@@@@@      @@              @@@@        @@@@@@@@@@@@@@@@     ***
*********************************************************************************************************

1 : Hydra
2 : Steghide Image
3 : Hashcat
4 : Show Docker
5 : Exit 
"
}

function echo_docker(){
clear
sudo docker images		
	echo "
r : reload
c : container
e : exit "
}

echo_menu

read menu

while [ $menu -lt 5 ] ;
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
	echo "Delete"
	read id_docker
	while [ ! $id_docker == 'e' ];
	do
		if [ $id_docker == 'r' ];
		then
			echo_docker		
		elif [ $id_docker == 'c' ];
		then
			echo "Input id_container"
			read id_container
			sudo docker stop $id_container
			echo "complete kill $id_container"		
		else
			sudo docker rmi -f  $id_docker
		fi
		echo "Delete"
		read id_docker
	done
	echo_menu
fi
read menu
done
clear
