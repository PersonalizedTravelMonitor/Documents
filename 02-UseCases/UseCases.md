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

## Finding alternatives to my trip

+ L'utente loggato si collega al servizio
+ L'utente sceglie un viaggio di suo interesse dai viaggi che sta seguendo
+ L'utente sceglie di cercare alternative al viaggio
+ Il sistema risponde con le possibili alternative (sia mezzi pubblici che privati)
+ L'utente sceglie l'alternativa che preferisce dalla lista

**Alternative scenarios**

* Se non ci sono alternative per un viaggio il sistema segnala all'utente l'assenza di alternative
