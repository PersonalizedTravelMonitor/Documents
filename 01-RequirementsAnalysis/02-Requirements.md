# Requirements

# Functional requirements 

(1)

* Permettere all'utente di seguire viaggi
	* Seguire viaggi occasionali
	* Seguire viaggi periodici
		* Può specificare i giorni della settimana in cui seguire il viaggio (di default da Lunedì a Venerdì)
* Inviare notifiche all'utente relative ai disagi che coinvolgono i viaggi che segue

(2)

* Trovare alternative ad un determinato viaggio soggetto a disagi
	* Trovare mezzi di trasporto pubblici alternativi
	* Trovare mezzi di trasporto privati alternativi

(3)

* Permettere all'utente di configuare quali tipologie di notifiche ricevere 
	* In base alla gravità della notifica (quantità ritardo)
	* In base al luogo dove si trova l'utente
	* In base alla tipologia del disagio
* Permettere all'utente di configurare quante tipologie ricevere
	* Frequenza
	* Numero massimo

(4)

* Riconoscere i disagi programmati e notificare gli utenti interessati almeno due giorni prima (o appena possibile in caso manchino meno di due giorni) dell'inizio del disagio programmato

(6)

* Permettere all'utente di segnalare disagi non programmati che coinvolgono un suo viaggio
* Permettere all'utente di consulatare segnalazioni di altri utenti relative alla propria linea di interesse

(7)

* Conservare statistiche riguardanti i disagi sui viaggi seguiti dagli utenti 
* Permettere all'utente di consultare le statistiche sui disagi 
	* Dei propri viaggi
	* Delle proprie linee

(8)

* Permettere all'utente di registrarsi al sistema
* Permettere all'utente di registrarsi tramite servizi di autenticazione esterni (Google, Facebook)

(10)

* Comunicare informazioni che coinvolgono la l'intera linea di interesse  

(11)

* Permettere all'utente di condividere lo stato del viaggio con servizi esterni (Facebook, Twitter, Email, Whatsapp)

# Non-functional requirements

(1)

* Riconoscere disagi sui mezzi di trasporto entro 3 minuti da quando si manifestano

(9)

* Permettere all'utente di accedere al servizio da cellulare, tablet, computer purchè è connesso ad internet
* Il servizio deve avere tempo di caricamento (first paint) inferiore a 2 secondi
* Il servizio deve avere tempo di caricamento (dei dati) inferiore a 5 secondi
* L'utente può seguire al massimo 10 viaggi al giorno

# Domain requirements

* Minimizzare il numero e la frequenza di richieste ai servizi esterni il più possibile