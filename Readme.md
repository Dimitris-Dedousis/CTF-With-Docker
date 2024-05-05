# [Download](https://dimitris-dedousis.github.io/CTF-With-Docker/Docker-Files.zip)

Το Project έχει ως στόχο την βασική εκμάθηση εξειδικευμένων εργαλείων μέσα από απλές ασκήσεις.
<b>Θεωρικό Μέρος</b><br>
Στα πρώτα κεφάλαια ο αναγνώστης αποκτά το θεωρητικό υπόβαθρο σχετικά με τα Docker, CTF  και για διαφορά εξειδικευμένα εργαλεία.
<b>Πρακτικό Μέρος</b><br>Όταν ο χρήστης καταφέρει να ολοκληρώσει όλες τις ασκήσεις θα είναι σε θέση να μπορεί να χρησιμοποιεί όλα τα εργαλεία , που χρησιμοποιείσαι για λύσεις τις ασκήσεις.
Για κάθε άσκηση έχουν δημιουργηθεί Docker οπού υπάρχουν μέσα όλα τα απαιτούμενα  αρχεία που χρειάζεται ο χρήστης.
Ο χρήστης καλείται από την άσκηση να επιλέξει μέσα από τα εργαλεία που έχουν αναφερθεί στο θεωρητικό μέρος, ποια είναι τα καταλληλά ώστε να ολοκλήρωση την άσκηση. 

---

## Περιεχόμενα

<b>Θεωρητικό Μέρος</b>

1o Κεφ. Dokcer
1. Docker
2. Τα Βασικά τμήματα 
3. Dockerfile
4. Container 

2o Κεφ. Capture The Flag ( CTF ) 
1. Capture The Flag 
2. Τύποι CTF 
3. Κατηγορίες CTF 

3o Κεφ. Εργαλεία 
1. Hydra
2. Nmap
3. Tshark
4. Hashcat
5. Steghide

<b> Πρακτικό Μέρος</b><br>
4o Κεφ. Περιγραφή - Στόχος Εργασίας
5o Κεφ. Δομή εργασίας
7o Κεφ. Ασκήσεις
1. Hydra
    - Remote Access 
    - Scan Network
2. Image Pass
3. Password Recovery
4. Find flag from Capture Files
8o Κεφ. Συμπέρασμα


# Θεωρητικό Μέρος 

Το Θεωρητικό Μέρος χωρίζεται σε τρία μέρη.  
Στο <b> Πρώτο Μέρος </b>  αναφέρουμε την δημιουργία ενός Docker file, τα μέρη που αποτελείται ένα Docker και τέλος πληροφορίες σχετικά με το Contener.  
Στο  <b>  Δεύτερο Μέρος </b>  αναφέρουμε πληροφορίες γενικά για τα CTF (Τι  είναι CTF , κατηγορίες Challenges , Τύποι CTF).  
Στο <b>  Τρίτο Μέρος  </b> αναλύουμε διαφορά εργαλεία σχετικά με το  πως και γιατί τα  χρησιμοποιούμαι και επιπλέον αναφέρουμε και  τους αντίστοιχους διακόπτες καθώς και σε τι χρησιμεύει ο κάθε ένας. 

## Docker 

 To Docker είναι μια  πλατφόρμα λογισμικού ανοιχτού κώδικα με την οποία μπορούμε να κάνουμε Virtualization σε επίπεδο λειτουργικού συστήματος.
Σου δίνει δηλαδή τη δυνατότητα να εγκαταστήσεις μόνο την εφαρμογή  υπηρεσία που θέλεις ( χωρίς έξτρα λειτουργικό σύστημα ), σε ένα απομονωμένο περιβάλλον , 
το οποίο δεν έχει πρόσβαση στο υπόλοιπο μας υπολογιστή.

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


## Capture The Flag (CTF)

 Το CTF είναι ένας διαγωνισμός στον οποίο οι συμμετέχοντες έχουν ορισμένο αριθμό εργασιών / δοκιμασίων που έχουν ως στόχο να κλέψουν μια κωδικοποιημένη συμβολοσειρά από ένα κρυφό αρχείο. Αυτή η συμβολοσειρά μοιάζει με ευαίσθητες πληροφορίες και είναι γνωστή ως flag.
Το flag είναι συνήθως ένα απόσπασμα κώδικα, ένα κομμάτι υλικού σε ένα δίκτυο ή ίσως ένα αρχείο. 


### Τύποι CTF 

| Τύπος | Περιγραφή |
| :---: | :---: |
|`Attack-Defense` | Στο CTF τύπου Attack-Defense, δύο ομάδες ανταγωνίζονται μεταξύ τους. |
|`Jeopardy CTF` | Στο Jeopardy CTF, υπάρχει είτε ένα τεστ είτε πολλές εργασίες που πρέπει να λύσετε. Πρέπει να εφαρμόσετε όλες τις ικανότητες ασφάλειας πληροφοριών που διαθέτετε για να λάβετε ένα κομμάτι κωδικοποιημένης συμβολοσειράς. Οι επόμενες εργασίες της σειράς θα ξεκλειδωθούν μόνο μετά την ολοκλήρωση των προηγούμενων. |
|`Mixed Style CTFs` | Το  Mixed Style CTFs  είναι ένας συνδυασμός των CTF  Jeopardy και Attack-Defense. |

### Κατηγορίες CTF challenges

1. Web 
2. Forensics 
3. Reversing 
4. Misc
5. Crypto
6. Pawn
7. Stego
8. Mobile
9. Hardware

## Εργαλεία 

### Hydra
 Με το εργαλείο Hydra μπορούμε να πραγματοποιήσουμε επιθέσεις τύπου <b> Brute-Force </b>, προκυμμένου να μαντέψουμε είτε το username είτε το password είτε και τα δυο. Για να πραγματοποιήσουμε τέτοιες επιθέσεις,  χρησιμοποιούμε τις λεγόμενες <b> Wordlists </b>, που περιέχουν είτε μια λίστα από password είτε μια λίστα με username. Για να δημιουργήσουμε μια τέτοια wordlist μπορούμε να χρησιμοποιήσουμε ειδικά tools όπως είναι το crunch.


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


> :computer: Εγκατάσταση 
> sudo apt-get install hydra-gtk 
> :information_source: <b>  Brute Force Attack </b> 
> Η brute-force attack (επίθεση ωμής βίας) αναφέρεται στην εξαντλητική δοκιμή πιθανών κλειδιών που παράγουν ένα κρυπτογράφημα, ώστε να αποκαλυφθεί το αρχικό μήνυμα. Τέτοιου είδους επιθέσεις, οι οποίες χρησιμοποιούν όλα τα δυνατά κλειδιά, μπορούν πάντοτε να πραγματοποιηθούν.Συχνά, όμως, ο επιτιθέμενος ξεκινά την επίθεση χρησιμοποιώντας πιο "πιθανά", κατά την άποψή, του κλειδιά, προσπαθώντας με αυτό τον τρόπο να βρει το κλειδί πιο γρήγορα. Πρακτικά, η αναζήτηση σταματά μόλις βρεθεί το κλειδί, χωρίς να χρειαστεί περαιτέρω ενημέρωση της λίστας κλειδιών.
> :bulb: [Rockyou.txt wordlist](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjw7evDl-P0AhWSqaQKHVeTBlsQFnoECAkQAQ&url=https%3A%2F%2Fgithub.com%2Fbrannondorsey%2Fnaive-hashcat%2Freleases%2Fdownload%2Fdata%2Frockyou.txt&usg=AOvVaw3snAERl1mU6Ccr4WFEazBd)

### Nmap

Είναι ενα εργαλειο που κυριος το χρησιμοποιουμαι για να σαρώνειτο δικτυο και να εντοπιζει τι ειδος και ποσες συσκευες  είναι συνδεδεμενες. Με την χρηση καταλληλους διακοπτες μπορουμε εκτος απο το να σαρωσουμε ενα δικτυο, να λαβουμε και τις καταλληλες πληροφοριες για ενα host. 

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


> :computer: Εγκατάσταση  
> sudo apt-get install nmap 
> :information_source:	<b>Firewall</b> 
> Ο όρος Firewall  χρησιμοποιείται για να δηλώσει κάποια συσκευή ή πρόγραμμα που είναι έτσι ρυθμισμένο ούτως ώστε να επιτρέπει ή να απορρίπτει πακέτα δεδομένων που περνούν από ένα δίκτυο υπολογιστών σε ένα άλλο. 
> :bulb: [Κατάλογος θυρών TCP και UDP](https://el.wikipedia.org/wiki/Κατάλογος_θυρών_TCP_και_UDP)

### Tshark

Το Tshark είναι το Wireshark αλλά με την διαφορά ότι δεν παρέχει γραφικό περιβάλλον όπως το Wireshark αλλά τρέχει στο Terminal. Με το συγκεκριμένο εργαλείο μπορούμε να συλλέξουμε packets που κουνούνται στο LAN και να τα αναλύσουμε με την χρήση συγκεκριμένων εντολών. Εκτός από αυτήν την δυνατότητα μπορούμε να αναλύσουμε και αρχεία με επέκταση .cap , οπού στην πραγματικότητα  είναι αποθηκευμένη η κίνηση των packets ενός LAN που υπήρχε σε μια συγκεκριμένη περίοδο. 
 

| Διακόπτες | Περιγραφή  |
| --- | --- |
|``` -i ``` | capture interface|
|``` -f  ``` | capture filter |
|``` -r ```| infile|
| ```  -w ```|εγγραφή πακέτων σε ένα αρχείο με μορφή pcapng που ονομάζεται "outfile" |
| ``` -c ```|packet count|
| ``` -2 ```| εκτελέστε μια ανάλυση  two-pass | 
|``` -B```| size of kernel buffer (def: 2MB)|

#### Διακόπτης ```-T```

```
fields
```

The values of fields specified with the -e option, in a form specified by the -E option.

``` pdml ```

Packet Details Markup Language, an XML-based format for the details of a decoded packet. This information is equivalent to the packet details printed with the -V flag.

```ps```

PostScript for a human-readable one-line summary of each of the packets, or a multi-line view of the details of each of the packets, depending on whether the -V flag was specified.

```psml```    

Packet Summary Markup Language, an XML-based format for the summary information of a decoded packet. This information is equivalent to the information shown in the one-line summary printed by default.

```json```

Packet Summary, an JSON-based format for the details summary information of a decoded packet. This information is equivalent to the packet details printed with the -V flag.

```jsonraw```

Packet Details, a JSON-based format for machine parsing including only raw hex decoded fields (same as -T json -x but without text decoding, only raw fields included). 

```ek```

Packet Details, an EK JSON-based format for the bulk insert into elastic search cluster. This information isequivalent to the packet details printed with the -V flag.

```text```

Text of a human-readable one-line summary of each of the packets, or a multi-line view of the details of each of the packets, depending on whether the -V flag was specified. This is the default.

```tabs```

Similar to the text report except that each column of the human-readable one-line summary is delimited with an ASCII horizontal tab character

> :computer: Εγκατάσταση 
> sudo apt-get install -y tshark 
> :information_source:<b>Wireshark</b>
> Το Wireshark είναι ελεύθερο και ανοιχτού κώδικα λογισμικό ανάλυσης πρωτοκόλλων δικτύου υπολογιστών. Χρησιμοποιείται για ανάλυση δικτύου, παρακολούθηση δικτύου, εντοπισμό και αντιμετώπιση προβλημάτων στα δίκτυα και για εκπαίδευση. 
>  :bulb: [Pcap](https://en.wikipedia.org/wiki/Pcap) 

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

> :bulb: Hash Function <br>
>  Γενικά η hash function είναι μια μαθηματική συνάρτηση που έχοντας ως είσοδο μια ομάδα δεδομένων και δίνει ως 
> έξοδο μια σειρά απο string (η συμβολοσειρά είναι συνήθως μικρότερη σε μέγεθος από την αρχική είσοδο). 
> Η έξοδος δεν μπορεί με αντιστροφή (με κανένα τρόπο) να μας παράγει την αρχική είσοδο. 
> Διάσημες συναρτήσεις κατατεμαχισμού <br>
> 1.MD5 <br>
> 2.SHA-1 <br><br>
> :bulb: [Generic hash types](https://hashcat.net/wiki/doku.php?id=example_hashes)

### Steghide 

 Το Steghide είναι ένα πρόγραμμα γραμμής εντολών που μας βοηθά να αποκρύψουμε τα αρχεία μέσα σε ένα αρχείο εικόνας ή ήχου. <br> Υποστηρίζει αρχεία JPEG, BMP, WAV και AU.

Εισαγωγή κρυφών αρχείων σε μια Εικόνα :
``` ruby
steghide embed -ef secret.txt -cf ostechnix.jpg
```

Eξαγωγή κρυφών αρχείων απο μια Εικόνα :
```ruby
steghide extract -sf ostechnix.jpg
```

> :computer: Εγκατάσταση 
> sudo apt install steghide
> :bulb: Steganography  
> Η Steganography είναι μια διαδικασία απόκρυψης ενός αρχείου, μιας εικόνας, ενός βίντεο, ενός κειμένου μέσα σε ένα άλλο αρχείο.
> Επιπλεον Εργαλεία :
> 1. outguess 
> 2. stegosuite

## Επίθεση (Attack)

### Brute Force Attack 

Η  brute-force attack  (επίθεση ωμής βίας) αναφέρεται στην εξαντλητική δοκιμή πιθανών κλειδιών που παράγουν ένα κρυπτογράφημα, ώστε να αποκαλυφθεί το αρχικό μήνυμα. Τέτοιου είδους επιθέσεις, οι οποίες χρησιμοποιούν όλα τα δυνατά κλειδιά, μπορούν πάντοτε να πραγματοποιηθούν.Συχνά, όμως, ο επιτιθέμενος ξεκινά την επίθεση χρησιμοποιώντας πιο "πιθανά", κατά την άποψή, του κλειδιά, προσπαθώντας με αυτό τον τρόπο να βρει το κλειδί πιο γρήγορα. Πρακτικά, η αναζήτηση σταματά μόλις βρεθεί το κλειδί, χωρίς να χρειαστεί περαιτέρω ενημέρωση της λίστας κλειδιών.

###  Denial-of-Service (DOS) Attack }

Επιθέσεις άρνησης εξυπηρέτησης ονομάζονται γενικά οι επιθέσεις εναντίον ενός υπολογιστή, ή μιας υπηρεσίας που παρέχεται, οι οποίες έχουν ως σκοπό να καταστήσουν τον υπολογιστή ή την υπηρεσία ανίκανη να δεχτεί άλλες συνδέσεις και έτσι να μην μπορεί να εξυπηρετήσει άλλους πιθανούς πελάτες.

### Malware 

Το κακόβουλο λογισμικό ή επιβλαβές λογισμικό αποτελεί μείζον πρόβλημα για την ασφάλεια των Πληροφοριακών Συστημάτων. Το λογισμικό χαρακτηρίζεται ως κακόβουλο όταν βάσει των προθέσεων του προγραμματιστή το λογισμικό που προκύπτει διαθέτει τις απαιτούμενες εντολές προκειμένου να βλάψει ένα υπολογιστικό σύστημα.

### SQL Injection 

Η SQL Injection είναι μια τεχνική έγχυσης κώδικα που μπορεί να καταστρέψει τη βάση δεδομένων σας. Είναι μια από τις πιο κοινές τεχνικές διαδικτυακής εισβολής. Είναι η τοποθέτηση κακόβουλου κώδικα σε δηλώσεις SQL, μέσω εισαγωγής ιστοσελίδας.  

### Man-in-the-Middle (MitM) Attacks 

Η επίθεση -in-the-middle \gr είναι μια κοινή παραβίαση ασφάλειας. Ο επιτιθέμενος παρεμποδίζει τη νόμιμη επικοινωνία μεταξύ δύο μερών, τα οποία είναι φιλικά μεταξύ τους.

# Πρακτικό Μέρος

## Περιγραφή 

Το <b>Πρακτικό Μέρος</b> αφορά την δημιουργία Challenge με θέματα που αφορούν το  Cyber Security με χρήση Docker. Κάθε Challenge θα έχει στόχο ο χρήστης χρησιμοποιώντας εργαλεία τα οποία αναφέρονται στο θεωρητικό μέρος αλλά και διάφορες τεχνικές να αποκτήσει το Flag.
Το κάθε Challenge έχει ως στόχο εκτός από τα να βρεις το Flag , να δει ο χρήστης και στην πράξη πως μπορείς να χρησιμοποιήσεις και τα συγκεκριμένα εργαλεία.

## Δομή εργασίας 

Ο χρήστης για να ξεκινήσει το Project αρχικά θα πρέπει να εκτέλεση το αρχείο menu.sh. <br>
Το menu.sh έχει σχεδιαστεί ώστε να λειτουργεί ώστε ο χρήστης να μπορεί χρησιμοποιεί τις ακόλουθες δυνατότητες : <br>
- Εκκινήσει ενός challeges<br>
- Εμφάνιση όλων τον Docker image που έχουν δημιουργηθεί. Επιπλέον σου δίνει την δεινότητα να διαγράψεις είτε ένα από τα image είτε ένα contener. Η διαγραφή γίνετε απλά εισάγοντας το ID είτε του image είτε το contener. Τέλος η συγκεκριμένη δυνατότητα προστέθηκε ώστε ο χρήστης να μπορεί στο τέλος να διαγράψει όλα τα image που δημιουργήθηκαν. Όταν ο χρήστης επιλέξει την εκκίνηση ενός Challenges τότε θα εκτελεστεί μια αυτόματα μια από τις δυο παρακάτω επιλογές :<br>
1. Δημιουργία (build) και εκτέλεση (run) αυτόματα, αν το challages απαιτεί την δημιουργία ενός μόνο Docker<br>
2. Την εκτέλεση ενός δευτέρου bash αρχείου , οπού στο συγκεκριμένο αρχείο εκτελείται αυτόματα το build για όλα τα Docker που απαιτούνται να δημιουργηθούν για την εκτέλεση του challenge.  
 
##  Ασκήσεις 

###  1. Hydra 

Η Alice απέκτησε πρόσβαση σε ένα  αρχείο txt, το οποίο περιλαβαίνει όλους του κωδικούς του Bob. Ένας από τους κωδικούς είναι και το password που συνδέεται στο υπολογιστη του, ο Bob. 

#### Scan Network

<b>Περιγραφή </b>

Στην αρχη σαρώνει το δίκτυο ώστε να εντοπίσει το μηχάνημα του Bob. Όταν ολοκληρώσει την σάρωση , θα είναι σε θέσει να εντόπιση την IP του.

#### Remote Access 

<b>Περιγραφή </b>
 
Γνωρίζοντας την IP θα μπορεί να εκτέλεση μια επίθεση Brute-force. Για την επίθεση χρησιμοποιεί το username του Bob που γνωρίζει ήδη, και η σύνδεση θα πραγματοποιηθεί με το πρωτόκολλο SSH.

> flag{password}
> 
> :bulb: Tips 
> Ο user του 2ου Docker είναι ο bob 
> Για το brute-force attack θα χρησιμοποιηθεί το pass.txt 

###  2. Image Pass 

<b> Περιγραφή </b>
 
Μόλις συνδέθηκε βρήκε στο φάκελο του ενα αρχείο εικόνας. Χρησιμοποιώντας τα εργαλεία της στενογραφίας , τσέκαρε αν μέσα υπάρχει ένα άλλο κριμένο αρχείο. Σε περίπτωση που υπάρχει θα του έκανε  εξαγωγή ώστε να διαβάσει το μυστικό μήνυμα.

> flag{******} 

###  3. Find flag from Capture Files 

<b>Περιγραφή </b>
 
Μόλις κατάφερε να απόκτηση απομακρυσμένη πρόσβαση. Εντόπισε μέσα στο μηχάνημα του Bob ένα αρχείο .cap. 
 
Η Alice υποπτεύεται ότι είναι ένα αρχείο καταγραφής των πακέτων κατά την διάρκεια που ο Bob ήταν στον broswer . 

##  Συμπέρασμα 

Όταν ο χρήστης καταφέρει να ολοκληρώσει όλες τις ασκήσεις θα είναι σε θέση να μπορεί να χρησιμοποιεί όλα τα εργαλεία , που χρησιμοποιείσαι για λύσεις τις ασκήσεις.
