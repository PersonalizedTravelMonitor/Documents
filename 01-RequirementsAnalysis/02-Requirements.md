## Requirements

### Functional requirements

Requirements are in the format of: Requirement [Expected Complexity (1-5), [MoSCoW Priority](https://en.wikipedia.org/wiki/MoSCoW_method)].

Each group of requirements is related to a user story, indicated between round brackets.

(C1)

* Allow the user to follow trips *[4, M]*
	* To follow trips on a one-time basis *[3, M]*
	* To follow trips periodically *[4, S]*
		* The user can specify days of the week in which to follow a trip (by default from Monday to Friday)
* Allow the user to stop following a trip *[2, M]*
* Send notifications to the user based to distruptions affecting trips he/she is following *[2/3, M]*

(C2)

* Automatically find alternatives to a given trip affected by distruptions *[5, C]*
	* Find alternative public transport solutions
	* Find alternative private transport solutions

(C3)

* Allow the user to configure which notifications he/she should receive *[3, C]*
	* According to the severity of the issue
	* According to the type of the issue
	* According to the place where the user is located *[5, C]*
* Allow the user to configure how many notifications he/she should receive  *[3, C]*
	* Frequency
	* Maximum number

(C4)

* Recognize planned distruptions of the service and send notifications to the users at least two days before the event (or as soon as possible if the event is happening in less than two days) *[5, S]*

(C5)

* Allow the user to report unplanned distruptions involving his trip *[3, S]*
	* The reports will be divided in categories (Delay, Suppression, Other)
	* It will be possibile to also add an optional short description
* Allow the user to read other's (and his) report involving transport lines of his interest *[2, S]*

(C6)

* Store statistics about distruptions on trips followed by users *[3, C]*
	* Average Delay
* Allow to the user to read statistics on the distruptions *[2, C]*
	* On his trips
	* On his transport lines of interest

(C7)

* Allow the user to register to the system using username, email and password *[3, M]*
* Allow the user to register using external authentication services (Google, Facebook) *[4, C]*

(C9)

* Recognize distruptions involving a whole transport line (when possible) in the moments before the trip *[4/5, S]*
* Send notifications on issues involving a whole transport line *[2/3, S]*

(C10)

* Allow the user to share the status of a trip with external services (Facebook, Twitter, Email, Whatsapp) *[2, C/W]*

(C11)

* Allow the user to contact the administrator through email *[1, S]*

(A1)

* Allow the administrator to send textual notification to the users *[2/3, C]*

(A2)

* Allow the administrator to see data about the state of the system, users, trips in a specific section *[3, C]*

(A3)

* Allow the administrator to change or delete user's report*[3, S]*

### Non-functional requirements

#### Interoperability

* APIs for external and internal use will be provided by the system, allowing for all the user-functionalities to be performed programmatically, also allowing external integration

#### Performance

* Discover distruptions on public transport within 4 minutes of their appearence

* The service should load (first paint load) in less than 2 seconds
* The service should load relevant data in less than 5 seconds


#### Scalability

* The system should be as decentralized as possible to allow for multiple information-retrieval nodes to be used
* The user will be able to follow at max 10 trips per day

#### Capacity

* The system should be able to handle 1000 users and 5000 daily unique trips

#### Availability

* The system should try to keep 24/7 uptime
	* The system should grant service between 05:00 and 24:00
* We can't grant full availability if external services are down

#### Usability

* Allow the user to access the service from a smartphone, tablet, computer while it is connected to the internet

#### Recoverability

* The system should gracefully handle failures of external services without crashing
* If the system crashes it will automatically restart

#### Maintainability

* If there are critical bugs they will be fixed whithin 3 working days
* If there are non-critical bugs they will be fixed whithin 2 working weeks
* Update will be performed in regular intervals

#### Security

* User data will be kept safe and private
	* Passwords will be at least 6 character long
* The website will not allow for unauthorized access
* The website will not allow for injections and XSS

#### Localization

* The system will be in English but will be designed with future support of other languages

#### Data Integrity

* Data will be stored in the database as needed
	* Detailed statistics for the current month will be saved
	* Summarized data will be stored for the previous months
* Unneeded data will be deleted as soon as it is not needed

### Domain requirements

* Minimize the number and the frequency of requests to external services both keeping performance and rate-limiting in mind
* Follow design and implementation standards (W3C, Google)

