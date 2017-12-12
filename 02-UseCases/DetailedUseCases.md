Detailed Use Cases

# Traveller - Following a trip

## Portata

Applicazione utente

## Livello

Obiettivo utente

## Attore Principale

* Commuter: l'utente del servizio che vuole cominciare a ricevere informazioni relative ad 1 viaggio di suo interesse

## PreCondizioni

L'utente si è autenticato presso il servizio

## PostCondizioni

Il servizio ha correttamente registrato l'interesse dell'utente relativo ad un viaggio e ha iniziato a monitorarlo

## Scenario Principale

+ L'utente si collega al servizio
+ L'utente si autentica 
+ L'utente decide di registrare un nuovo viaggio affinchè esso venga monitorato
+ L'utente inserisce il tipo di mezzo che intende usare
+ L'utente inserisce "il punto" iniziale per il proprio viaggio
+ L'utente inserisce la destinazione del viaggio
+ L'utente inserisce giorno, orario del viaggio
+ Il sistema mostra all'utente l'elenco dei viaggi compatibili con la scelta effettuata 
+ L'utente seleziona un viaggio
+ L'utente conferma la selezione
+ Il sistema conferma all'utente la riuscita dell'operazione

## Estensioni

### Scenario alternativo di Successo: Già loggato
... punto 1
+ L'utente è già autenticato e quindi riconosciuto dal sistema 
... resto delle operazioni

### Scenario alternativo di Successo: Viaggio Ricorrente
.... dopo la selezione
+ L'utente specifica che il viaggio è di tipo ricorrente
+ L'utente indica l'elenco dei giorni in cui il viaggio gli interessa
... resto delle operazioni

### Scenario alternativo di Fallimento: Stazione non Riconosciuta
... uguale fino al mezzo
+ L'utente inserisce un punto di partenza o di arrivo che non sono riconosciuti dal sistema
+ Il sistema comunica tramite un messaggio di errore l'incapacità di erogare il servizio

### Scenario alternativo di Fallimento: Nessun viaggio disponibile
... uguale fino a scelta di giorno e orario
+ Il sistema non individua un viaggio compatibile con la scelta dell'utente e ne informa l'utente

### Scenario alternativo di Fallimento: Mancata Conferma
... uguale fino alla scelta del viaggio
+ L'utente non conferma l'operazione che quindi viene considerata nulla


## Requisiti speciali
Requisiti non funzionali correlati

### Performance
* Il sistema deve proporre l'elenco delle soluzioni compatibili in meno di 10 secondi
* Il sistema deve rilevare la presenza di errori nei dati inseriti dall'utente in meno di 5 secondi

### Usabilità
* L'interfaccia deve essere facilmente comprensibile
* L'interfaccia deve adattarsi alla fruizione attraverso dispositivi di diversa natura (smartphone, tablet e desktop)


## Elenco delle varianti tecnologiche
niente

## Elenco delle varianti input/output
niente

## Frequenza di ripetizione
Una decina di volte al giorno per singolo utente

## Varie