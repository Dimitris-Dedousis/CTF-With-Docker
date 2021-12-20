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

<b>Found Flags</b>
```ruby
tshark -r http.pcap -Y 'http' -T fields -e http.file_data
```
|   |  |
|---|---|
|-r|Διαβαζουμε το αρχειο|
|-Y|Τα πακέτα που ταιριάζουν με το φίλτρο εκτυπώνονται ή εγγράφονται στο αρχείο.|
|-T|Ρυθμίστε τη μορφή της εξόδου κατά την προβολή αποκωδικοποιημένων δεδομένων πακέτων. Οι επιλογές είναι μία από:  ek,fields,json,jsonraw,pdml,ps,psml,tabs,text|
|-e|Εκτυπώνουμε το πεδίο http.file_data|

### -T

```fields``` <br> 
The values of fields specified with the -e option, in a form specified by the -E option.

<br>```pdml```<br>
Packet Details Markup Language, an XML-based format for the details of a decoded packet. This information is equivalent to the packet details printed with the -V flag.

<br> ```ps```<br>
PostScript for a human-readable one-line summary of each of the packets, or a multi-line view of the details of each of the packets, depending on whether the -V flag was specified.

<br> ```psml```<br>    
Packet Summary Markup Language, an XML-based format for the summary information of a decoded packet. This information is equivalent to the information shown in the one-line summary printed by default.

<br> ```json```<br>
Packet Summary, an JSON-based format for the details summary information of a decoded packet. This information is equivalent to the packet details printed with the -V flag.

<br> ```jsonraw```<br>
Packet Details, a JSON-based format for machine parsing including only raw hex decoded fields (same as -T json -x but without text decoding, only raw fields included). 

<br> ```ek```<br>
Packet Details, an EK JSON-based format for the bulk insert into elastic search cluster. This information isequivalent to the packet details printed with the -V flag.

<br> ```text```<br>
Text of a human-readable one-line summary of each of the packets, or a multi-line view of the details of each of the packets, depending on whether the -V flag was specified. This is the default.

<br> ```tabs```<br>
Similar to the text report except that each column of the human-readable one-line summary is delimited with an ASCII horizontal tab character

<b>output</b>
```
!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">\n<html>\n<head>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\n<title>Directory listing for /</title>\n</head>\n<body>\n<h1>Directory listing for /</h1>\n<hr>\n<ul>\n<li><a href="desktop.ini">desktop.ini</a></li>\n<li><a href="Exercise/">Exercise/</a></li>\n<li><a href="flag.html.txt">flag.html.txt</a></li>\n<li><a href="GitHub.url">GitHub.url</a></li>\n<li><a href="Hack%20The%20Box.url">Hack The Box.url</a></li>\n<li><a href="Project/">Project/</a></li>\n<li><a href="UNIWA%20HOTSPOT.url">UNIWA HOTSPOT.url</a></li>\n<li><a href="UNIWA.lnk">UNIWA.lnk</a></li>\n<li><a href="%CE%A0%CE%91.%CE%94.%CE%91.url">����.��.��.url</a></li>\n<li><a href="%CE%A4%CE%BC%CE%AE%CE%BC%CE%B1.url">����������.url</a></li>\n</ul>\n<hr>\n</body>\n</html>\n

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">\n<html>\n<head>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\n<title>Directory listing for /Exercise/</title>\n</head>\n<body>\n<h1>Directory listing for /Exercise/</h1>\n<hr>\n<ul>\n<li><a href="index/">index/</a></li>\n<li><a href="password/">password/</a></li>\n</ul>\n<hr>\n</body>\n</html>\n



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">\n<html>\n<head>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\n<title>Directory listing for /Exercise/password/</title>\n</head>\n<body>\n<h1>Directory listing for /Exercise/password/</h1>\n<hr>\n<ul>\n<li><a href="page.html">page.html</a></li>\n</ul>\n<hr>\n</body>\n</html>\n

<!-- ZmxhZ3t3aXIzc2hhcmtfY3RmX2h0bWx9 -->\r\n<html>\r\n<body>\r\n<h1>Page</h1>\r\n</body>\r\n</html>
```
