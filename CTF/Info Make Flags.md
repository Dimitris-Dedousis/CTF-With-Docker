
exercise_1
install alice annd bob :

1) apt update 
2) apt install net-tools ==> ifconfig
3) apt install iputils-ping -y ==> instal ping cmd
4) apt install openssh-server -y ==> install
5) service ssh start




Steghide Image - exercise_2

1) Make Flag
Python 2.7.18
flag{steghide_image} ==> ASCII
666c61677b73746567686964655f696d6167657d ==> hex

2) Images 
steghide embed -ef data -cf image.jpg 

Solve
1) apt istall steghide -y
2) steghide extract -sf image.jpg
3) Open Python 2.7.18
4) "666c61677b73746567686964655f696d6167657d".decode('hex')


exercise_3
install :
1) apt update 
2) apt install hascat -y
