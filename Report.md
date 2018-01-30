# Relazione Progetto "Personalized Travel Monitor"

## Useful Links

* [Project Proposal on the SCORE Website](http://score-contest.org/2018/projects/ptm.php)
* [Repo of the design and analysis documents](https://github.com/PersonalizedTravelMonitor/Documents)
* [Repo of the code](https://github.com/PersonalizedTravelMonitor/Application)
	* Release Tag: `1.0`

## Requirement Analysis

## Design

## Development 

### Language and Tools

To develop a Web Application for the project we used **PHP 7.1** for the backend and **HTML5, CSS3, Javascript** for the frontend.

Together with PHP we used [Laravel](https://laravel.com/), a framework with ease of use, cleanliness and best practices in mind. Since it came with many out-of-the box features it allowed us to focus on the design and implementation of the core business logic of the project. We enriched Laravel with a few packages to again, improve the development experience, mainly [Carbon](carbon.nesbot.com/docs/) (for working with dates) and [Guzzle](docs.guzzlephp.org/en/stable/quickstart.html) for working with external HTTP APIs.

For the frontend since it was very time consuming writing the style from scratch we used [Bulma.io](https://bulma.io) a modern CSS framework that does provide already-made components for implementing web interfaces. We also used [jQuery](http://jquery.com/) for handling user interaction in Javascript and modern Web APIs for sending push notifications to users (namely the [Service Worker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API))

For handling the best compatibility across the development and the production environment we used [Docker](https://www.docker.com/what-docker), a container-based solution that allowed us to develop without worrying about having the same packages/operating systems. We used an existing Docker configuration, called [Laradock](http://laradock.io/)

### Patterns

Since, according to the requirement analysis, we had to develop a Web Application we decided to use an **MVC (Model View Controller)** approach for the main parts of our project. Some other parts, mainly the one that takes care of periodically checking if there are delays/events for the registered trip was developed similar to a **Broker/Worker** structure but it is a bit simpler, implemented, for example, without queues or complex services to hanle the tasks.

Since we developed the project using the PHP framework [Laravel](https://laravel.com/), it was quite straight forward to develop following the MVC pattern, since Models, Views and Controllers are at the base of the framework.

Another important pattern we applied for allowing a more agile workflow is the **Evolutionary Database Design**. It is well explained by Martin Fowler [in this webpage](https://martinfowler.com/articles/evodb.html). This pattern allows for faster prototyping and for keeping track of the DB Schema changes in the git repo.

In the design pattern compartment we used a few, mostly the one enforced by the framework by design and a few other because we felt it were necessary.

* **ORM Pattern**/**Active record**, this pattern is widely used in the project for accessing the database and for mapping the Models to the database. Provided by Laravel. 
* **Builder Pattern**, used to create the queries to be executed by the ORM. Provided by Laravel.
* **Facade**, used for implementing the different data sources so that they expose a common interface. It was used together with the **Template Class** pattern.
* **Publish/Subscribe**, for handling notifications and application-wide communication.