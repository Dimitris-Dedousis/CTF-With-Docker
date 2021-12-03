# Setting - Method  

<p>Στο συγκεκριμένο έγγραφο αναφέρουμε σε κάθε άσκηση τι εγκατάσταση από package γίνονται με την δημιουργία του docker ή τι ρυθμίσεις γίνονται στο Docker. Στην συνέχεια αναφέρουμε διάφορες βοήθειες ώστε να μπορέσει ο χρήστης να ολοκλήρωση την άσκηση.<p>

## Hydra - Exercise 1
<b>Install Machine (.sh) </b>

1) ```apt update ```
2) ```apt install net-tools```  ifconfig
3) ```apt install iputils-ping -y```  ping 
4) ```apt install openssh-server -y```  install  SSH
5) ```service ssh start``` 

## Image - Exercise 2

</b> Install Machine (.sh) </b>
1) ``` apt update -y ``` 
2) ```apt istall steghide -y```

<b> Make Flag </b>
1) Install Python 2.7.18 or [Execute Python Online (Python v2.7.13)](https://www.tutorialspoint.com/execute_python_online.php)
2) flag{steghide_image}  ASCII <br>
3) 666c61677b73746567686964655f696d6167657d  hex

<b> Images </b>
1) ```steghide embed -ef data -cf image.jpg``` 

<b> Solve </b>

2) ```steghide extract -sf image.jpg```
3) Open Python 2.7.18 or 
  [Convert hexadecimal to text](http://www.unit-conversion.info/texttools/hexadecimal/) or 
  [Execute Python Online (Python v2.7.13)](https://www.tutorialspoint.com/execute_python_online.php)
5) "666c61677b73746567686964655f696d6167657d".decode('hex')


## CAP FILE - Exercise 3

<b> Install Machine (.sh) </b>
1) ```apt update -y ```
2) ```apt install tshark -y```

