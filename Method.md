# Method

## Hydra - exercise_1
Install Machine (.sh) :

1) apt update 
2) apt install net-tools ==> ifconfig
3) apt install iputils-ping -y ==> instal ping cmd
4) apt install openssh-server -y ==> install
5) service ssh start




## Steghide Image - exercise_2

Install Machine (.sh) :
1) apt update -y 
2) apt istall steghide -y

Make Flag
1) Install Python 2.7.18
2) flag{steghide_image} ==> ASCII <br>
3) 666c61677b73746567686964655f696d6167657d ==> hex

Images 
1) steghide embed -ef data -cf image.jpg 

Solve
2) steghide extract -sf image.jpg
3) Open Python 2.7.18
4) "666c61677b73746567686964655f696d6167657d".decode('hex')


## exercise_3

Install Machine (.sh) :
1) apt update 
2) apt install hashcat -y
