# Requirements

# Functional requirements 

(1)

* Permettere all'utente di seguire viaggi
	* Seguire viaggi occasionali
	* Seguire viaggi periodici
		* Può specificare i giorni della settimana in cui seguire il viaggio (di default da Lunedì a Venerdì)
		
* Permettere all'utente di smettere di seguire un viaggio

* Inviare notifiche all'utente relative ai disagi che coinvolgono i viaggi che segue

* Allow the user to follow trips
	* To follow trips on a one-time basis
	* To follow trips periodically
		* The user can specify days of the week in which to follow a trip (by default from Monday to Friday)
* Send notifications to the user based to distruptions affecting trips he/she is following
(2)

* Trovare in automatico alternative ad un determinato viaggio soggetto a disagi
	* Trovare mezzi di trasporto pubblici alternativi
	* Trovare mezzi di trasporto privati alternativi

* Automatically find alternatives to a given trip affected by distruptions
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

* Permettere all'utente di registrarsi al sistema mediante l'inserimento di username, email e password
* Permettere all'utente di registrarsi tramite servizi di autenticazione esterni (Google, Facebook)

* Allow the user to register to the system using username, email and password
* Allow the user to register using external authentication services (Google, Facebook)

(10)

* Comunicare informazioni che coinvolgono la l'intera linea di interesse  

* Recognize distruptions involving a whole transport line (when possible) in the moments before the trip 
* Send notifications on issues involving a whole transport line

(11)

* Permettere all'utente di condividere lo stato del viaggio con servizi esterni (Facebook, Twitter, Email, Whatsapp)

* Allow the user to share the status of a trip with external services (Facebook, Twitter, Email, Whatsapp)

(C12)

* Permettere all'utente di contattare gli amministratori di sistema tramite email

* Allow the user to contact the administrator through email

(A1)

* Permettere all'amministratore di inviare notifiche testuali agli utenti 
* Peremttere all'amministratore di visualizzare inforazioni sullo stato del sistema, utenti, viaggi segnalazioni in una apposita sezione
* Permettere all'amministratore di modificare le segnalazioni degli utenti 
* Permettere all'amministratore di eliminare le segnalazio degli utenti

# Non-functional requirements


## Interoperability

* APIs for external and internal use will be provided by the system, allowing for all the user-functionalities to be perfomed programmatically, also allowing external integration

## Performance

* Discover distruptions on public transport within 4 minutes of their appearence

* The service should load (first paint load) in less than 2 seconds
* The service should load relevant data in less than 5 seconds


## Scalability

* The system should be as decentralized as possible to allow for multiple information-retrieval nodes to be used
* The user will be able to follow at max 10 trips per day

## Capacity

* The system should be able to handle 1000 users and 5000 daily unique trips

## Availability

* The system should try to keep 24/7 uptime
	* The system should grant service between 05:00 and 24:00 
* We can't grant full availability if external services are down

## Usability

* Allow the user to access the service from a smartphone, tablet, computer while it is connected to the internet

## Domain requirements

* Minimize the number and the frequency of requests to external services both keeping performance and rate-limiting in mind

## Recoverability

* The system should gracefully handle failures of external services without crashing
* If the system crashes it will automatically restart

## Maintainability

* If there are critical bugs they will be fixed whithin 3 working days
* If there are non-critical bugs they will be fixed whithin 2 working weeks
* Update will be performed in regular intervals

## Security

* User data will be kept safe and private
* The website will not allow for unauthorized access
* The website will not allow for injections and XSS


## Localization

* The system will be in English but will be designed with future support of other languages 


## Data Integrity

* Data will be stored in the database as needed
	* Detailed statistics for the current month will be saved
	* Summarized data will be stored for the previous months 
* Unneeded data will be deleted as soon as it is not needed