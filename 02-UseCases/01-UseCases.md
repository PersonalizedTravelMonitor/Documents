## Use Cases

### Anonymous Traveler

#### Registering an account

+ The user connects to the system 
+ The user chooses to register
+ The users inserts an username, an email and a password
+ The system confirms that the registration has been performed
+ The system redirects the user to the starting page

**Alternative scenarios**

* The user chooses an username or an email that was already token by someone else. The systems will tell the user that he must repeat the registration with different information
* The user inserts a password that doesn't comply to security standard. The systems will tell the user that he must repeat the registration with different information
* The user inserts a malformed email.The systems will tell the user that he must repeat the registration with different information
* The user doesn't insert one of the required fields. The systems will tell the user that he must repeat the registration with all the required information.

#### View a Trip Detail

+ The user connects to the system
+ The user chooses to see the details of a trip 
+ The user chooses the vehicle type
+ The user chooses departing and arrival location and time
+ The user will see the entire list of compatible solutions found with their details 

**Alternative Scenarios**
+ No compatible solutions were found, an error message will be shown
+ The user inserts incomplete data; no compatible solutions will be found

### Traveller

#### Signin in an account

+ The user connects to the system
+ The system decides to log-in 
+ The user inserts the required data
+ The system will check the data and redirect the user to the starting page

**Alternative scenarios**

* The user inserts wrong information; the system will show an error message and ask the user to repeat the operation
* The user is already logged in; the system will recognize him and will redirect him to the starting page


#### Follow a trip

+ The user connects and logs-in into the system
+ The user chooses the vehicle type
+ The user chooses departing and arrival location and time
+ The user will see the entire list of compatible solutions found
+ The user selects one of the solutions proposed 
+ The user confirms the choice

**Alternative scenarios**

* Non ci sono viaggi disponibile per quella tratta, il sistema segnala l'impossibilità di erogare il servizio per quella tratta
* L'utente non effettua la conferma, il viaggio viene annullato
* Se l'utente inserisce nei campi preposti un testo non valido e conferma l'operazione il sistema segnala l'errore e ripropone la procedura
* Se l'utente non specifica un campo obbligatorio, il sistema segnala l'errore e ripropone la procedura mantenendo i dati già inseriti precedentemente
* L'utente specifica che si tratta di un viaggio ricorrente, il sistema chiede ogni quanto il viaggio viene effettuato

#### Finding alternatives to my trip

+ L'utente si collega al serivizo e si autentica
+ L'utente sceglie un viaggio di suo interesse dai viaggi che sta seguendo
+ L'utente sceglie di cercare alternative al viaggio
+ Il sistema risponde con le possibili alternative (sia mezzi pubblici che privati)
+ L'utente sceglie l'alternativa che preferisce dalla lista

**Alternative scenarios**

* Se non ci sono alternative per un viaggio il sistema segnala all'utente l'assenza di viaggi compatibili

#### Report a Distruption

+ L'utente loggato sceglie un viaggio di interesse
+ L'utente sceglie di segnalare un problema
+ L'utente inserisce nella segnalazione le informazioni necessarie e invia la segnalazione
+ Il sistema recepisce la segnalazione e lo comunica all'utente

**Alternative scenarios**
* L'utente non completa la segnalazione con le informazioni necessarie; essa viene cancellata
* L'utente vuole inviare ulteriori segnalazioni in merito allo stesso viaggio

#### Share the state of the trip

+ L'utente si collega al serivizo e si autentica
+ L'utente seleziona il viaggio inserendone i dati relativi
+ L'utente sceglie di condividere lo stato del viaggio utilizzando un servizio di condivisione esterno
+ L'utente può eventualmente inserire una descrizione
+ Il sistema esegue l'operazione e ridirige l'utente alla pagina relativa al viaggio selezionato in precedenza

**Aternative scenarios**

* L'utente sbaglia ad inserire i dati relativi al viaggio. Il sistema segnala l'errore all'utente che deve ripetere l'iserimento

#### View users stats

+ L'utente si collega al serivizo e si autentica
+ L'utente sceglie di visualizzare le proprie statistiche
+ Il sistema visualizza informazioni e report di interesse

#### Unfollow a trip

+ The user connects to the system
+ The user selects, from the list of the trips followed by himself, the one that doesn't want to follow anymore 
+ The user confirms the selection 

**Alternative scenarios**

* Non ci sono viaggi seguiti dall'utente, il sistema non propone nessun viaggio da smettere di seguire

#### Receive a notification

+ The user's device shows to the user the notification sent by the system 

**Alternative scenarios**

* L'utente ignora la notifica e non la apre, il sistema non visualizzerà il dettaglio della stessa

#### Contact the administrator

+ The users sends an email to the administrator

#### Configure notification frequency and type

+ The user connects to the system
+ The user selects the frequency of the notifications that will be sent to him
+ The user di notifiche a cui sarà esposto
+ L'utente conferma la scelta effettuata
+ Il sistema conferma il successo dell'operazione

**Alternative scenarios**

* Se la scelta non va a buon fine il sistema preserva le impostazioni precedenti

### Admin

#### Manually send a notification

+ L'admin si collega al servizio
+ L'admin effettua l'autenticazione inserendo le corrette credenziali di accesso
+ L'admin sceglie il tipo di notifica da inviare (sciopero, aggiornamenti sistema, informazioni tecniche del servizio)
+ L'admin compila i campi proposti per l'invio della notifica e conferma l'operazione
+ L'admin sceglie gli utenti a cui inviare la notifica (di default tutti)
+ L'admin conferma l'anteprima della notifica proposta dal sistema
+ Il sistema invia la notifica e mostra all'admin l'esito dell'operazione

**Alternative scenarios**

* Se l'admin inserisce dati di autenticazione sbagliati il sistema segnala l'errore e ripropone la procedura di autenticazione
* Se l'admin è già loggato, il sistema lo riconosce e lo reindirizza automaticamente alla pagina principale
* Se l'admin inserisce nei campi preposti alla creazione di una notifica un testo non valido e conferma l'operazione il sistema segnala l'errore e ripropone la procedura
* Se l'admin non specifica un campo obbligatorio durante la creazione di una notifica, il sistema segnala l'errore e ripropone la procedura mantenendo i dati già inseriti precedentemente
* Se l'admin non conferma la notifica nella schermata di anteprima il sistema ripropone la procedura di creazione della notifica mantenendo i dati già inseriti precedentemente
* Se il sistema non riesce ad inviare la notifica segnala all'admin l'errore e ripropone la procedura di creazione della notifica mantenendo i dati già inseriti precedentemente

#### View detailed stats

+ L'admin si collega al servizio e si autentica
+ L'admin sceglie di visualizzare le statische sullo stato del sistema
+ L'admin sceglie di visualizzare le statische sugli utenti
+ L'admin sceglie di visualizzare le statische sui viaggi sorvegliati

