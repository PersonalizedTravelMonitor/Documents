# Requirements

# Functional requirements 

(1)

* Permettere all'utente di seguire viaggi
	* Seguire viaggi occasionali
	* Seguire viaggi periodici
		* Può specificare i giorni della settimana in cui seguire il viaggio (di default da Lunedì a Venerdì)
* Inviare notifiche all'utente relative ai disagi che coinvolgono i viaggi che segue

* Allow the user to follow trips
	* To follow trips on a one-time basis
	* To follow trips periodically
		* The user can specify days of the week in which to follow a trip (by default from Monday to Friday)
* Send notifications to the user based to distruptions affecting trips he/she is following
(2)

* Trovare alternative ad un determinato viaggio soggetto a disagi
	* Trovare mezzi di trasporto pubblici alternativi
	* Trovare mezzi di trasporto privati alternativi

* Find alternative to a given trip affected by distruptions
	* Find alternative public transport solutions
	* Find alternative private transport solutions

(3)

* Permettere all'utente di configuare quali tipologie di notifiche ricevere 
	* In base alla gravità della notifica (quantità ritardo)
	* In base al luogo dove si trova l'utente
	* In base alla tipologia del disagio
* Permettere all'utente di configurare quante tipologie ricevere
	* Frequenza
	* Numero massimo

* Allow the user to configure which notifications he/she should receive
	* According to the severity of the issue
	* According to the type of the issue
	* According to the place where the user is located
(4)

* Riconoscere i disagi programmati e notificare gli utenti interessati almeno due giorni prima (o appena possibile in caso manchino meno di due giorni) dell'inizio del disagio programmato

* Recognize planned distruptions of the service and send notifications to the users at least two days before the event (or as soon as possible if the event is happening in less than two days)

(6)

* Permettere all'utente di segnalare disagi non programmati che coinvolgono un suo viaggio
* Permettere all'utente di consulatare segnalazioni di altri utenti relative alla propria linea di interesse

* Allow the user to report unplanned distruptions involving his trip
* Allow the user to read other's (and his) report involving trasnport lines of his interest
(7)

* Conservare statistiche riguardanti i disagi sui viaggi seguiti dagli utenti 
* Permettere all'utente di consultare le statistiche sui disagi 
	* Dei propri viaggi
	* Delle proprie linee

* Store statistics about distruptions on trips followed by users
	* Average Delay
* Allow to the user to read statistics on the distruptions
	* On his trips
	* On his transport lines of interest
(8)

* Permettere all'utente di registrarsi al sistema
* Permettere all'utente di registrarsi tramite servizi di autenticazione esterni (Google, Facebook)

* Allow the user to register to the system
* Allow the user to register using external authentication services (Google, Facebook)

(10)

* Comunicare informazioni che coinvolgono la l'intera linea di interesse  

* Recognize distruptions involving a whole transport line (when possible) 
* Send notifications on issues involving a whole transport line

(11)

* Permettere all'utente di condividere lo stato del viaggio con servizi esterni (Facebook, Twitter, Email, Whatsapp)

* Allow the user to share the status of a trip with external services (Facebook, Twitter, Email, Whatsapp)

# Non-functional requirements

(1)

* Riconoscere disagi sui mezzi di trasporto entro 3 minuti da quando si manifeso 

* Discover distruptions on public transport withing 3 minutes of their appearence
 
(9)

* Permettere all'utente di accedere al servizio da cellulare, tablet, computer purchè è connesso ad internet
* Il servizio deve avere tempo di caricamento (first paint) inferiore a 2 secondi
* Il servizio deve avere tempo di caricamento (dei dati) inferiore a 5 secondi
* L'utente può seguire al massimo 10 viaggi al giorno

* Allow the user to access the service from a smartphone, tablet, computer while it is connected to the internet
* The service should load (first paint load) in less than 2 seconds
* The service should load relevant data in less than 5 seconds

# Domain requirements

* Minimizzare il numero e la frequenza di richieste ai servizi esterni il più possibile

* Minimize the number and the frequency of requests to external services both keeping performance and rate-limiting in mind
