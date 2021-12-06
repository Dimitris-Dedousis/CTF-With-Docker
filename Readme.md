# <p align="center"> CTF With Docker </p>

<p <p align="justify"> 
Το Project έχει ως στόχο την βασική εκμάθηση εξειδικευμένων εργαλείων μέσα από απλές ασκήσεις.

<b>Θεωρικό Μέρος</b><br>
Στα πρώτα κεφάλαια ο αναγνώστης αποκτά το θεωρητικό υπόβαθρο σχετικά με τα Docker, CTF  και για διαφορά εξειδικευμένα εργαλεία.

<b>Πρακτικό Μέρος</b><br>
Για κάθε άσκηση έχουν δημιουργηθεί Docker οπού υπάρχουν μέσα όλα τα απαιτούμενα  αρχεία που χρειάζεται ο χρήστης.
Ο χρήστης καλείται από την άσκηση να επιλέξει μέσα από τα εργαλεία που έχουν αναφερθεί στο θεωρητικό μέρος, ποια είναι τα καταλληλά ώστε να ολοκλήρωση την άσκηση.  

</p>

# <p align="center">Περιεχόμενα</p>

<b>Θεωρητικό Μέρος</b><br>
[1o Κεφ. Dokcer](https://github.com/Dimitris-Dedousis/Lunix/blob/main/Docker/Cuber.md#docker) <br>
1. Docker
2. Τα Βασικά τμήματα 
3. Dockerfile
4. Container 

[2o Κεφ. Capture The Flag ( CTF )](https://github.com/Dimitris-Dedousis/Lunix/blob/main/Docker/Cuber.md#capture-the-flag-ctf) <br>
1. [Capture The Flag]() 
2. [Τύποι CTF]() 
2. [Κατηγορίες CTF]() 

[3o Κεφ. Εργαλεία ](https://github.com/Dimitris-Dedousis/Lunix/blob/main/Docker/Cuber.md#%CE%B5%CF%81%CE%B3%CE%B1%CE%BB%CE%B5%CE%AF%CE%B1) <br>
1. [Hydra](https://github.com/Dimitris-Dedousis/Lunix/blob/main/Docker/Cuber.md#hydra) <br>
2. [Nmap](https://github.com/Dimitris-Dedousis/Lunix/blob/main/Docker/Cuber.md#nmap) <br>
3. [Tshark](https://github.com/Dimitris-Dedousis/Lunix/blob/main/Docker/Cuber.md#tshark) <br>
4. [Hashcat]() <br>
5. [Steghide]()

<b> Πρακτικό Μέρος</b><br>
[4o Κεφ. Περιγραφή - Στόχος Εργασίας](https://github.com/Dimitris-Dedousis/Lunix/blob/main/Docker/Cuber.md#%CF%80%CE%B5%CF%81%CE%B9%CE%B3%CF%81%CE%B1%CF%86%CE%AE) <br>
[5o Κεφ. Δομή εργασίας](https://github.com/Dimitris-Dedousis/Lunix/blob/main/Docker/Cuber.md#%CE%B4%CE%BF%CE%BC%CE%AE-%CE%B5%CF%81%CE%B3%CE%B1%CF%83%CE%AF%CE%B1%CF%82) <br>
[6o Κεφ. Docker]() <br>
[7o Κεφ. Ασκήσεις](https://github.com/Dimitris-Dedousis/Lunix/blob/main/Docker/Cuber.md#%CE%B1%CF%83%CE%BA%CE%AE%CF%83%CE%B5%CE%B9%CF%82) <br>
1. Hydra
    1. [Remote Access](https://github.com/Dimitris-Dedousis/Lunix/blob/main/Docker/Cuber.md#1-nmap-and-hydra) <br>
    2. Scan Network
    
3. [Image Pass]()
4. [Password Recovery]()
5. [Find flag from Capture Files]()


[Συμπέρασμα](https://github.com/Dimitris-Dedousis/Lunix/blob/main/Docker/Cuber.md#%CF%83%CF%85%CE%BC%CF%80%CE%B5%CF%81%CE%AC%CF%83%CE%BC%CE%B1%CF%84%CE%B1) <br>

# <p align="center"> Θεωρητικό Μέρος </p>
## <p align="center"> Docker </p>
<p align="justify"> To Docker είναι μια  πλατφόρμα λογισμικού ανοιχτού κώδικα με την οποία μπορούμε να κάνουμε Virtualization σε επίπεδο λειτουργικού συστήματος.
Σου δίνει δηλαδή τη δυνατότητα να εγκαταστήσεις μόνο την εφαρμογή  υπηρεσία που θέλεις ( χωρίς έξτρα λειτουργικό σύστημα ), σε ένα απομονωμένο περιβάλλον , 
το οποίο δεν έχει πρόσβαση στο υπόλοιπο μας υπολογιστή.</p>

<br>

> :link: [Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)

### Τα βασικά τμήματα 
- `Dockerfile `<br>
- ` Image `<br>
- ` Container `<br>
- ` Network `<br>

### Dockerfile
Το Dockerfile είναι ένα απλό αρχείο οδηγιών , στο οποίο γράφουμε σε κάθε γραμμή τις εντολές που θέλουμε να εκτελεστούν με τη σειρά. 
Ακολουθεί την λογική ενός Bash script.

| Χρήσιμη Δείκτες | Περιγραφή  |
| :-----------: | :-----------: |
|  ` FROM ` |  Ορίζουμε το image πάνω στο οποίο θα βασιστεί το δικό μας.| 
|  ` LABEL ` |  Δίνουμε μια ετικέτα όπως για παράδειγμα μια περιγραφή για να γνωρίζουμε τι κάνει το συγκεκριμένο image.| 
| ` USER ` |  Δημιουργούμε νέους χρήστες και ομάδες| 
|  ` WORKDIR ` |  Δηλώνουμε τον κεντρικό φάκελο του image | 
|  ` RUN ` |  Σημειώνουμε τις εντολές που θέλουμε να εκτελεστούν κατά τη διάρκεια του build| 
|  ` COPY `  | Επιλέγουμε τα αρχεία που θέλουμε να προστεθούν στο image μας| 
|  ` ENV `|  Δίνουμε πληροφορίες περιβάλλοντος όπως για παράδειγμα το username και το password μίας SQL βάσης δεδομένων.| 
|  ` EXPOSE `|   Ορίζουμε από ποιο port θα έχουμε πρόσβαση στην υπηρεσία που τρέχει στο image | 
|  ` CMD ` |  Δίνουμε την εντολή που θέλουμε να εκτελεστεί αμέσως μετά την εκκίνηση του container| 
|  ` ENTRYPOINT `  | Ορίζουμε τη βασική εντολή του image μας κάνοντάς το εκτελέσιμο | 
|  ` ONBUILD ` |  Σημειώνουμε οδηγίες οι οποίες θα εκτελεστούν αν το δικό μας image χρησιμοποιηθεί ως βάση για ένα άλλο | 

### Container
1. Τρέχουν οι εφαρμογές.
2. Χρησιμοποιεί τον πυρήνα του host γιατι δεν έχει δικό του πυρήνα.
3. Κάθε container είναι πλήρως απομονωμένο από το host λειτουργικό και από άλλα containers.
4. Κάθε container δεν κρατάει δεδομένα μέσα του.<br> Δηλαδή αν τρέχουμε ένα container με mySQL,τα δεδομένα της βάσης θα χαθούν αν κάνουμε restart το service.

 
## <p align="center">Capture The Flag (CTF) </p>

### Capture The Flag 

<p align="justify"> Το CTF είναι ένας διαγωνισμός στον οποίο οι συμμετέχοντες έχουν ορισμένο αριθμό εργασιών / δοκιμασίων που έχουν ως στόχο να κλέψουν μια κωδικοποιημένη συμβολοσειρά από ένα κρυφό αρχείο. Αυτή η συμβολοσειρά μοιάζει με ευαίσθητες πληροφορίες και είναι γνωστή ως flag.
Το flag είναι συνήθως ένα απόσπασμα κώδικα, ένα κομμάτι υλικού σε ένα δίκτυο ή ίσως ένα αρχείο. </p>

### Τύποι CTF 
| Τύπος | Περιγραφή |
| :---: | :---: |
|` Attack-Defense ` | Στο CTF τύπου Attack-Defense, δύο ομάδες ανταγωνίζονται μεταξύ τους. |
|` Jeopardy CTF ` | Στο Jeopardy CTF, υπάρχει είτε ένα τεστ είτε πολλές εργασίες που πρέπει να λύσετε. Πρέπει να εφαρμόσετε όλες τις ικανότητες ασφάλειας πληροφοριών που διαθέτετε για να λάβετε ένα κομμάτι κωδικοποιημένης συμβολοσειράς. Οι επόμενες εργασίες της σειράς θα ξεκλειδωθούν μόνο μετά την ολοκλήρωση των προηγούμενων. |
|` Mixed Style CTFs ` | Το  Mixed Style CTFs  είναι ένας συνδυασμός των CTF  Jeopardy και Attack-Defense. |

### Κατηγορίες CTF
 
|Κατηγορία | Περιγραφή |
| :---: | :---: |
| ` Web ` |  |
| ` Forensics `||
| ` Reversing `||
| ` Misc `| |
| ` Crypto` ||
| `Pawn`| |
| ` Stego`| |
| ` Mobile`| |
| ` Hardware`| |

## <p align="center"> Εργαλεία <p>

### Hydra
<p align="justify"> Με το εργαλείο Hydra μπορούμε να πραγματοποιήσουμε επιθέσεις τύπου <b> Brute-Force </b>, προκυμμένου να μαντέψουμε είτε το username είτε το password είτε και τα δυο. Για να πραγματοποιήσουμε τέτοιες επιθέσεις,  χρησιμοποιούμε τις λεγόμενες <b> Wordlists </b>, που περιέχουν είτε μια λίστα από password είτε μια λίστα με username. Για να δημιουργήσουμε μια τέτοια wordlist μπορούμε να χρησιμοποιήσουμε ειδικά tools όπως είναι το crunch.
</p>

Η εντολή που τρέχουμε είναι :
``` ruby
hydra -L names -P pws protocol://URL_OR_IP
```

| Διακόπτες | Περιγραφή  |
| --- | --- |
| /P | Όταν χρησιμοποιούμε wordlist για το password| 
| /L | Όταν χρησιμοποιούμε wordlist για το username|
| /p | Όταν γνωρίζουμε το password|
| /l | Όταν γνωρίζουμε το username|
|  protocol://URL_OR_IP | Ορίζουμε το Protocol που θα χρησιμοποιήσουμε και μετρά το URL ή την IP του μηχανήματος.|

<br> 

> :computer: Εγκατάσταση <br>
> sudo apt-get install hydra-gtk

### Nmap
<p align="justify"> Είναι ενα εργαλειο που κυριος το χρησιμοποιουμαι για να σαρώνειτο δικτυο και να εντοπιζει τι ειδος και ποσες συσκευες  είναι συνδεδεμενες. Με την χρηση καταλληλους διακοπτες μπορουμε εκτος απο το να σαρωσουμε ενα δικτυο, να λαβουμε και τις καταλληλες πληροφοριες για ενα host. </p>

``` ruby
nmap [switches] [IP]
```

Χρησιμοποιούμαι τον χαρακτήρα μπαλαντέρ ( * ) για να σαρώσουμε  ένα ολόκληρο δίκτυ.
``` ruby
nmap 192.168.0.* 
```

| Διακόπτες | Περιγραφή  | Μορφή  |
| --- | --- | --- |
| -A | Εντοπίζει το Λειτουργικό Σύστημα (Λ.Σ) που έχει ο συγκεκριμένος host. | `nmap -A  192.168.0.1`  | 
| -Ο | Είναι σαν το ```/A```, αλλά επιστρέφει περισσότερες πληροφορίες σχετικά με το  Λ.Σ | `nmap -O  192.168.0.1` |
| -sA | Μας ενημερώνει εάν υπάρχει ενεργό Firewall. | `nmap -sA  192.168.0.1`|
| -p |  Μας επιστρέφει πληροφορίες σχετικά με την port που έχουμε ορίσει. | `nmap -p 443 192.168.0.1 ` |

<br>

> :computer: Εγκατάσταση <br> 
> sudo apt-get install nmap

### Tshark
 <p align="justify"> Το Tshark είναι το Wireshark αλλά με την διαφορά ότι δεν παρέχει γραφικό περιβάλλον όπως το Wireshark αλλά τρέχει στο Terminal. Με το συγκεκριμένο εργαλείο μπορούμε να συλλέξουμε packets που κουνούνται στο LAN και να τα αναλύσουμε με την χρήση συγκεκριμένων εντολών. Εκτός από αυτήν την δυνατότητα μπορούμε να αναλύσουμε και αρχεία με επέκταση .cap , οπού στην πραγματικότητα  είναι αποθηκευμένη η κίνηση των packets ενός LAN που υπήρχε σε μια συγκεκριμένη περίοδο. </p>
 
 | Διακόπτες | Περιγραφή  |
| --- | --- |
|``` -i ``` | capture interface|
|``` -f  ``` | capture filter |
|``` -r ```| infile|
| ```  -w ```|write packets to a pcapng-format file named "outfile"|
| ``` -c ```|packet count|
| ``` -2 ```| perform a two-pass analysis| 
|``` -B```| size of kernel buffer (def: 2MB)|

> :computer: Εγκατάσταση <br>
> sudo apt-get install -y tshark

### Hashcat

``` ruby
hashcat -m 0 -a 0 -o cracked.txt target_hashes.txt rockyou.txt
```

| Διακόπτης | Περιγραφή  |
| --- | --- |
| `-m 0` | Τύπος κατακερματισμού που θα σπάσουμε (MD5) |
| `a 0` | ορίζει επίθεση λεξικού |
| `-o cracked.txt` | αρχείο εξόδου για τους κωδικούς πρόσβασης που έχουν καταστραφεί |
| `rockyou.txt` | Η worldlist για αυτήν την επίθεση |

<br>

>  Hash Function <br>
> <p align="justify"> Γενικά η hash function είναι μια μαθηματική συνάρτηση που έχοντας ως είσοδο μια ομάδα δεδομένων και δίνει ως 
> έξοδο μια σειρά απο string (η συμβολοσειρά είναι συνήθως μικρότερη σε μέγεθος από την αρχική είσοδο). 
> Η έξοδος δεν μπορεί με αντιστροφή (με κανένα τρόπο) να μας παράγει την αρχική είσοδο. </p>
> Διάσημες συναρτήσεις κατατεμαχισμού <br>
> 1.MD5 <br>
> 2.SHA-1 <br><br>
>  
> :link: [Generic hash types](https://hashcat.net/wiki/doku.php?id=example_hashes)

## Steghide 

<p align="justify"> Το Steghide είναι ένα πρόγραμμα γραμμής εντολών που μας βοηθά να αποκρύψουμε τα αρχεία μέσα σε ένα αρχείο εικόνας ή ήχου. <br> Υποστηρίζει αρχεία JPEG, BMP, WAV και AU.</p>

Εισαγωγή κρυφών αρχείων σε μια Εικόνα :
``` ruby
steghide embed -ef secret.txt -cf ostechnix.jpg
```

Eξαγωγή κρυφών αρχείων απο μια Εικόνα :
```ruby
steghide extract -sf ostechnix.jpg
```

> :computer: Εγκατάσταση <br>
> sudo apt install steghide

> :bulb: Tips <br> 
> Η Steganography είναι μια διαδικασία απόκρυψης ενός αρχείου, μιας εικόνας, ενός βίντεο, ενός κειμένου μέσα σε ένα άλλο αρχείο.<br>
> Επιπλεον Εργαλεία :<br>
> outguess <br>
> stegosuite<br>

# <p align="center"> Πρακτικό Μέρος</p>

## <p align="center"> Περιγραφή </p>
<p align="justify"> Το θέμα της εργασίας είναι μέσα από την χρήση τον  Docker να δημιουργήσουμε ένα CTF, οπού θα περιέχει διάφορες άσκησης στο κομμάτι της ασφάλειας. Στόχος είναι μέσα από τις ασκήσεις ο χρήστης να μπορέσει να εξοικειωθεί τόσο με τα εργαλεία που είναι εγκαταστημένα στο Docker αλλά και με το να μπορεί να λύνει και στο μέλλον παροιμία θέματα ασφάλειας. Κάθε άσκηση έχει ως σκοπό να δείξει στο χρήστη τον τρόπο λειτουργίας ενός συγκεκριμένου tool αλλά και τις δεινότητες που μπορεί να περιέχει.</p>

## <p align="center"> Δομή εργασίας </p>
<p align="justify">.... </p>

##  <p align="center">Δομή Docker</p>
......
 
## <p align="center"> Ασκήσεις </p>
### <p align="center"> 1. Hydra </p>
<p align="justify">
Η Alice απέκτησε πρόσβαση σε ένα  αρχείο txt, το οποίο περιλαβαίνει όλους του κωδικούς του Bob. Ένας από τους κωδικούς είναι και το password που συνδέεται στο υπολογιστη του, ο Bob. 
</p>

#### Scan Network
<b>Περιγραφή </b>
<p align="justify">
Στην αρχη σαρώνει το δίκτυο ώστε να εντοπίσει το μηχάνημα του Bob. Όταν ολοκληρώσει την σάρωση , θα είναι σε θέσει να εντόπιση την IP του.
</p>

#### Remote Access 
<b>Περιγραφή </b>
<p align="justify"> 
Γνωρίζοντας την IP θα μπορεί να εκτέλεση μια επίθεση Brute-force. Για την επίθεση χρησιμοποιεί το username του Bob που γνωρίζει ήδη, και η σύνδεση θα πραγματοποιηθεί με το πρωτόκολλο SSH.
</p>

> flag{password}<br>
> <br>
> :bulb: Tips <br>
> Ο user του 2ου Docker είναι ο bob <br>
> Για το brute-force attack θα χρησιμοποιηθεί το pass.txt 


## <p align="center"> 2. Image Pass </p>
<b> Περιγραφή </b>
<p align="justify"> 
Μόλις συνδέθηκε βρήκε στο φάκελο του ενα αρχείο εικόνας. Χρησιμοποιώντας τα εργαλεία της στενογραφίας , τσέκαρε αν μέσα υπάρχει ένα άλλο κριμένο αρχείο. Σε περίπτωση που υπάρχει θα του έκανε  εξαγωγή ώστε να διαβάσει το μυστικό μήνυμα.    
</p>

> <p> flag{******}</p> 

## <p align="center"> 3. Find flag from Capture Files </p>
<b>Περιγραφή </b>
<p align="justify"> 
 Μόλις κατάφερε να απόκτηση απομακρυσμένη πρόσβαση. Εντόπισε μέσα στο μηχάνημα του Bob ένα αρχείο .cap. 
</p>
<p align="justify"> 
 Η Alice υποπτεύεται ότι είναι ένα αρχείο καταγραφής των πακέτων κατά την διάρκεια που ο Bob συνδέθηκε μέσα από SSH στον υπολογιστή της δουλειά του. 
</p>

> Μόλις ανάλυσε το cap αρχείο βρήκε τα στοιχεία username και password και πραγματοποίησε μέσα από SSH σύνδεση στο υπολογιστή της δουλείας του Bob.




## <p align="center"> Συμπέρασμα </p>
Όταν ο χρήστης καταφέρει να ολοκληρώσει όλες τις ασκήσεις θα είναι σε θέση να μπορεί να χρησιμοποιεί όλα τα εργαλεία , που χρησιμοποιείσαι για λύσεις τις ασκήσεις.
