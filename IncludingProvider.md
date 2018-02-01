# How to include a different trips information provider

## Steps
+ Analyze the service and the information that could be used by PTM
+ Create a DB migration for the provider's model istances
+ Create a Model class
+ Register a route 
+ Create a SearchProvider
+ Create a dedicated TripPartController
+ Associate the dedicated infoProvider class into the generic SearchProvider
+ Create external API for retrieving data
+ Display the results into dedicated views

## Analyze the service and the information that could be used by PTM
Since PTM is a service that should help travellers that use transportation vehicles you must assure that you can always identify:
+ A departing point
+ An arrival point
+ A generic time around which the service will be provided

Inserted that, a list of a solutions will be researched and displayed to the users. [searchSolutions method]

Tipically, the first two pieces of information are known locations suchs as public stations; in this case it should be possible to retrieve a collection of those locations involved in the provider's business to help the user selecting them. 

Additional information could be: vehicle number, line used, additional properties of the vehicle, etc. 

## Create a DB migration for the provider's model istances
`app/databas/migrations`

A table will be added to the DB in which all the additional information identified at the previous step will be recorded.
This table will be the one that of the specific Model

## Create a Model class
`/app/Models/TripParts/<SpecificProvider>TripPart.php`
Example: `/app/Models/TripParts/AtmTripPart.php`

Every provider tripPart will be represented as a specific class in the application. 
Each of those classes must respect the polymorhipc relationthip with the abstract class `TripPart` and to do so they must include: 

`public function tripPart()
    {
        return $this->morphOne('App\TripPart', 'details');
    }`


## Register a route
The framework is configured to use the following convention for reaching providers's informationSearchers:
`/{infoSource}/methodToCall `

## Create a specific SearchProvider

`app/SearchProviders/<SpecificProvider>SearchInfoProvider.php`
Example: `app/SearchProviders/TrenordSearchInfoProvider.php`


This class will use the information obtained from the external API to perform 3 essential operations :
+ autoCompleteFrom
+ autoCompleteTo
+ searchSolutions 

Eventually this class could trim or modify for additional convenience the data representation of the results obtained externally from the API.

## Associate the dedicated infoProvider class into the generic SearchProvider

In the class SearchInfoProvider you must add to the dictionary "infoSources" the class that will be the concrete search provider with a label.

## Create a specific API

`app/ExternalApis/<SpecificProvider>API.php`
Example: `app/ExternalApis/TrenordAPI.php`

This class will be the obtain the data compatible with the input that the user inserted. No additional operations should be performed on that class.

## Create a dedicated TripPart controller

// ??????
This class will handle CRUD operations on the specific trip parts offered by the provider.

"TripParts are the only classes that distinguish solutions offered by different providers (acccording to the Class Diagram)."

## Display the results into dedicated views

`app/views/trips/<specificTripPartView>.blade.php`
Example: `app/views/trips/createTrain.blade.php`

To offer the best user experiences, some specific views will be created to display the information related to the solutions of that specif provider.
Those views will be included into the layout of the applications. 


### Implemented Providers

At this moment the public transportation provider Trenord has been fully implemented.
The next providers that will be added are Trenitalia and ATM.