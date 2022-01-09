#!/bin/bash
sudo docker build -t alice ./exercise_1/Alice
sudo docker build -t bob ./exercise_1/Bob

clear
echo "
WELCOME EXERCISE 1
1 : Alice (Machine)
2 : Bob   (Machine)
0 : Exit
"
echo -e "Machine >> \c"
read vm
while [ $vm != 0 ] 
do
	if [ $vm -eq 1 ]
	then
		gnome-terminal -- /bin/bash  -c  'sudo docker run   -ti alice '
	elif [ $vm -eq 2 ]
	then
		gnome-terminal -- /bin/bash  -c  'sudo docker run  -ti bob '
	fi
	echo ">>"
	read vm
done


