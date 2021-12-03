# Method

## Hydra - exercise_1
<b>Install Machine (.sh) </b>

1) ```apt update ```
2) ```apt install net-tools```  ifconfig
3) ```apt install iputils-ping -y```  ping 
4) ```apt install openssh-server -y```  install  SSH
5) ```service ssh start``` 

## Steghide Image - exercise_2

</b> Install Machine (.sh) </b>
1) ``` apt update -y ``` 
2) ```apt istall steghide -y```

<b> Make Flag </b>
1) Install Python 2.7.18
2) flag{steghide_image}  ASCII <br>
3) 666c61677b73746567686964655f696d6167657d  hex

<b> Images </b>
1) ```steghide embed -ef data -cf image.jpg``` 

<b> Solve </b>

2) ```steghide extract -sf image.jpg```
3) Open Python 2.7.18
4) "666c61677b73746567686964655f696d6167657d".decode('hex')


## exercise_3

<b> Install Machine (.sh) </b>
1) ```apt update -y ```
2) ```apt install hashcat -y```

## exercise_4

<b> Install Machine (.sh) </b>
1) ```apt update -y ```
2) ```apt install tshark -y```

