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

* If no compatible solutions are found an error message will be shown to the user
* The user doesn't confirm the selection, the operation will be discarded
* The user doesn't insert all the required informations and therefore no solutions will researched
* The user specifies that the trip is recurring on multiple days; the user will insert the days in which the trip should be monitored

#### Finding alternatives to my trip

+ The user connects and logs-in into the system
+ The user selects a trip from the list of trips that he's following 
+ The user chooses to select alternative to that trip inserting similar information
+ The system shows a list of compatible solutions found
+ The user chooses one of the solutions 

**Alternative scenarios**

* If no compatible solutions are found an error message will be shown to the user

#### Report a Distruption

+ The logged-in user chooses a trip of interest 
+ The user chooses to report an information
+ The user inserts some information and confirms his intentio to send the message
+ The system receives and shows to everyone interested in the same trip the user's report

**Alternative scenarios**
* The user doesn't give a confirmation; the report will be discarded
* The user wants to send multiple report and therefore will perform this operation multiple times

#### Share the state of the trip

+ The user connects and logs-in into the system
+ The user selects a trip from the list of the trips that is following
+ The user chooses to share the state of the trip using an external sharing service
+ The system performs the required operation and redirects the user the user to the trips'detail page

**Aternative scenarios**

* The user isn't following any trip; he must register a trip before sharing its state 

#### View users stats

+ The user connects and logs-in into the system
+ The user chooses to see his personal statistics
+ The system shows information and report that regards the user

#### Unfollow a trip

+ The user connects to the system
+ The user selects, from the list of the trips followed by himself, the one that doesn't want to follow anymore
+ The user confirms the selection

**Alternative scenarios**

* There are no trips followed by the user, the operation is not possible

#### Receive a notification

+ The user's device shows to the user the notification sent by the system


#### Contact the administrator

+ The users sends an email to the administrator

#### Configure notification frequency and type

+ The user connects to the system
+ The user selects the frequency of the notifications that will be sent to him
+ The user chooses the type of notification that matters to him
+ The user confirms the selection 
+ The system confirms that the modifications took places

**Alternative scenarios**

* If the change is not confirmed the system will keep the last settings 

### Admin

#### Manually send a notification

+ The admin connects to the system
+ The admin chooses the type of notification to send
+ The admin compile the form for notifications and confirm the operation
+ The admin chooses the users to send the notification to (all by default)
+ The system send the notification to the users

**Alternative scenarios**

* The admin inserts wrong information; the system will show an error message and ask the user to repeat the operation
* The admin is already logged in; the system will recognize him and will redirect him to the starting page
* If the admin don't compile all the fields of the form for the notification, the system reports the error
* If the notification send fails the system reports the error with an alert.

#### View detailed stats

+ The admin connects to the system
+ The admin chooses to see the system statistics
+ The admin chooses to see the users statistics
+ The admin chooses to see the programmed trips statistics
