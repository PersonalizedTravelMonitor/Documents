# Use Cases

## Commuter

### Registering an account

+ L'utente si collega al servizio
+ L'utente sceglie di registrarsi
+ L'utente scegli un nome utente, specifica una email ed una password
+ Il sistema conferma l'iscrizione e ridirige l'utente alla pagina principale

**Alternative scenarios**

* L'utente sceglie un nome utente od una email già usata da un altro utente. Il sistema segnala l'errore all'utente che deve ripetere la procedura
* L'utente sceglie una password che non rispetta i vincoli di sicurezza. Il sistema segnala l'errore all'utente che deve ripetere la procedura
* L'utente sceglie una email malformata. Il sistema segnala l'errore all'utente che deve ripetere la procedura
* L'utente non specifica un campo obbligatorio, il sistema segnala l'errore all'utente che deve ripetere la procedura

### Signin in an account

+ L'utente si collega al servizio  
+ L'utente sceglie di fare l'autenticazione
+ L'utente inserisce i dati e il sistema, dopo averli verificati, ridireziona l'utente alla pagina principale

**Alternative scenarios**

* Se l'utente inserisce dati sbagliati il sistema segnala l'errore all'utente che dovrà ripetere la rocedura
* Se l'utente è già loggato, il sistema lo riconosce e lo reindirizza automaticamente alla pagina principale

### Finding alternatives to my trip

+ L'utente loggato si collega al servizio
+ L'utente sceglie un viaggio di suo interesse dai viaggi che sta seguendo
+ L'utente sceglie di cercare alternative al viaggio
+ Il sistema risponde con le possibili alternative (sia mezzi pubblici che privati)
+ L'utente sceglie l'alternativa che preferisce dalla lista

**Alternative scenarios**

* Se non ci sono alternative per un viaggio il sistema segnala all'utente l'assenza di alternative

### Report a Disruption
+ L'utente loggato sceglie un viaggio di interesse
+ L'utente sceglie di segnalare un problema
+ L'utente inserisce nella segnalazione le informazioni necessarie e invia la segnalazione
+ Il sistema recepisce la segnalazione e lo comunica all'utente

**Alternative scenarios**
* L'utente non completa la segnalazione con le informazioni necessarie; essa viene cancellata
* L'utente vuole inviare ulteriori segnalazioni in merito allo stesso viaggio

### Share the state of the trip

+ L'utente si collega al servizio
+ L'utente accede alla propria area privata eseguendo il login
+ L'utente seleziona il viaggio inserendone i dati relativi
+ L'utente sceglie di condividere lo stato del viaggio indicando il social network desiderato
+ L'utente può eventualmente inserire una descrizione
+ Il sistema esegue l'operazione e ridirige l'utente alla pagina relativa al viaggio selezionato in precedenza

**Aternative scnearios**

* L'utente sbaglia ad inserire i dati relativi al viaggio. Il sistema segnala l'errore all'utente che deve ripetere l'iserimento
* L'utente deve eseguire il login nel social network desiderato per condividere lo stato del viaggio

### View users stats

+ L'utente si collega al servizio
+ L'utente accede alla propria area privata eseguendo il login
+ L'utente sceglie di visualizzare le proprie stitistiche
+ Il sistema ridirige l'utente alla pagina relativa alle proprie statistiche

### Follow a trip

+ L'utente si collega al serivizo
+ L'utente sceglie il punto di partenza, di arrivo e l'orario
+ L'utente sceglie da un elenco proposto dal sistema il viaggio
+ L'utente conferma la scelta effettuata

**Alternative scenarios**

* Non ci sono viaggi disponibile per quella tratta, il sistema segnala l'impossibilità di erogare il servizio per quella tratta
* L'utente non effettua la conferma, il viaggio viene annullato
* Se l'utente inserisce nei campi preposti un testo non valido e conferma l'operazione il sistema segnala l'errore e ripropone la procedura
* Se l'utente non specifica un campo obbligatorio, il sistema segnala l'errore e ripropone la procedura mantenendo i dati già inseriti precedentemente
* L'utente specifica che si tratta di un viaggio ricorrente, il sistema chiede ogni quanto il viaggio viene effettuato

### Unfollow a trip

+ L'utente si collega al serivizo
+ L'utente sceglie da un elenco proposto dal sistema il viaggio che intende smettere di seguire
+ L'utente conferma la scelta effettuata

**Alternative scenarios**

* Non ci sono viaggi seguiti dall'utente, il sistema non propone nessun viaggio da unfolloware
* Se si tratta di un viaggio ricorrente il sistema chiede se si vuole modificare la ricorrenza o eliminare tutte le ricorrenze per quel viaggio

### Receive a notification

  >Bisogna mettere come prerequisito che lutente abbia le notifiche del servizio in uso abilitate? tipo browser ecc. quindi con login a monte'

+ L'utente visualizza la notifica inviata dal sistema
+ L'utente seleziona la notifica
+ Il sistema visualizza i dettagli relativi alla notifica selezionata

**Alternative scenarios**

* L'utente ignora la notifica e non la apre, il sistema non visualizzerà il dettaglio della stessa

### Contact the administrator

+ L'utente invia una email all'indirizzo dell'amministratore di sistema

### Configure notification frequency and type

+ L'utente accede al servizio
+ L'utente sceglie la frequenza delle notifiche che riceverà
+ L'utente decide il tipo di notifiche a cui sarà esposto
+ L'utente conferma la scelta effettuata
+ Il sistema conferma il successo dell'operazione

**Alternative scenarios**

* Se la scelta non va a buon fine il sistema preserva le impostazioni precedenti



## Admin

### Manually send a notification

+ L'admin si collega al servizio
+ L'admin effettua l'autenticazione inserendo le corrette credenziali di accesso
+ L'admin sceglie il tipo di notifica da inviare (sciopero, aggiornamenti sistema, informazioni tecniche del servizio)
+ L'admin compila i campi proposti per l'invio della notifica e conferma l'operazione
+ L'admin conferma l'anteprima della notifica proposta dal sistema
+ Il sistema invia la notifica e mostra all'admin l'esito dell'operazione

**Alternative scenarios**

* Se l'admin inserisce dati di autenticazione sbagliati il sistema segnala l'errore e ripropone la procedura di autenticazione
* Se l'admin è già loggato, il sistema lo riconosce e lo reindirizza automaticamente alla pagina principale
* Se l'admin inserisce nei campi preposti alla creazione di una notifica un testo non valido e conferma l'operazione il sistema segnala l'errore e ripropone la procedura
* Se l'admin non specifica un campo obbligatorio durante la creazione di una notifica, il sistema segnala l'errore e ripropone la procedura mantenendo i dati già inseriti precedentemente
* Se l'admin non conferma la notifica nella schermata di anteprima il sistema ripropone la procedura di creazione della notifica mantenendo i dati già inseriti precedentemente
* Se il sistema non riesce ad inviare la notifica segnala all'admin l'errore e ripropone la procedura di creazione della notifica mantenendo i dati già inseriti precedentemente

### View detailed stats
+ L'admin si collega al servizio e si autentica
+ L'admin sceglie di visualizzare le statische sullo stato del sistema
+ L'admin sceglie di visualizzare le statische sugli utenti
+ L'admin sceglie di visualizzare le statische sui viaggi sorvegliati

