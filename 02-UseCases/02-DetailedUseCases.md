## Detailed Use Cases

### Traveller - Following a trip

#### Range

User Application 

#### Level

User scope

#### Main Actor

* Commuter: the user of the service that wants to start receiving pieces of information regarding 1 trip of interest 

#### Pre-Conditions

The user has logged-in in the system

#### Post-Conditions

The service correctly registered the interest of the user regarding a trip and has started monitorig it

#### Main Scenario

+ The user connects to the system
+ The user logs in
+ The user decides to register a new trip to be monitored
+ The user chooses the type of vehicle that wants to use
+ The user inserts the departing location of the trip
+ The user inserts the destination of the trip
+ The user inserts the day and the time of the trip
+ The system shows to the user a list of the trips compatible with the data given in input
+ The user selects a trip from the list
+ The user confirms the selection
+ The system confirms to the user that the subscription has been completed 

#### Extensions

##### Alternative success scenario: Already logged-in

+ The user connects to the system
+ The user is already logged in and therefore recognized by the system
+ same operations as the main scenario

##### Alternative success scenario: Recourring Trip

+ same operations as the main scenario until point 9
+ The user selects a trip from the list
+ The user specifies that the trip is recurring
+ The user selects from a list the days in which the trip should be monitored
+ The user confirms the choice
+ The system confirms to the user that the subscription has been completed 

##### Alternative failure scenario: Unrecognized station

+ same operations as the main scenario until point 4
+ The user inserts the departing location of the trip
+ The user inserts the destination of the trip
+ The system doesn't find a compatible solution with the data given in input the; an error message will be shown to the user

##### Alternative failure scenario: No available trip

+ same operations as the main scenario until point 6
+ The user inserts the day and the time of the trip
+ The system doesn't find a compatible solution with the data given in input the; an error message will be shown to the user

##### Alternative failure scenario: No confirmation

+ same operations as the main scenario until point 9
+ The user selects a trip from the list
+ The user doesn't confirm the operation that will be discarded

#### Special Requirements

##### Performance

* The system must show the list of compatible solutions in less than 10 seconds
* The system should detect the presence of errors in the data inserted by the user in less than 5 seconds

##### Usabilità

* The user interface must be easily understandable
* The interface must adapt to different types of devices (smartphone, tablet and desktop)


#### Technological variants

nothinge

#### I/O variants

nothing

#### Frequency of use

Around ten times a day per user

