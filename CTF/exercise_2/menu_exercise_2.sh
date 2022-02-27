#!/bin/bash
sudo docker build -t alice  ./exercise_2/alice
clear
echo "
WELCOME EXERCISE 2
1 : Access Alice
0 : EXIT
"
echo -e "Machine >> \c"
read vm
while [ $vm != 0 ] 
do
	if [ $vm -eq 1 ]
	then
		gnome-terminal -- /bin/bash  -c  'sudo docker run -ti alice'
	fi
	echo ">>"
	read vm
done


