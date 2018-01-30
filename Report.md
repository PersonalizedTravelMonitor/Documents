# Relazione Progetto "Personalized Travel Monitor"

## Initial remarks

The project was carried out with the [Agile methodology](https://en.wikipedia.org/wiki/Agile_software_development) in mind, we developed incrementally and collected and refined requirements as we went forward with the development. This proved very interesting especially because we were our own stakeholder/product owner since we planned to use the software for ourselves. To ease the Agile development process we first collected user stories (again from ourselves), analyzed them and transformed them in requirements and tasks.
Everthing went mostly according to plan, but in the end, since exams were longer than expected, we decided to not implement some small but not core features (basically a few of the *could* and *should* features) but we still carried out the initial analysis for them.
Since we gave the planning phase enough time we were able to design the project very closely to what the implementation turned out to be. This was definitely a great thing for us and it allowed the implementation to be pretty straigth-forward, basically following design documents. 

## Useful Links

* [Project Proposal on the SCORE Website](http://score-contest.org/2018/projects/ptm.php)
* [Repo of the design and analysis documents](https://github.com/PersonalizedTravelMonitor/Documents)
* [Repo of the code](https://github.com/PersonalizedTravelMonitor/Application)
	* Release Tag: `1.0`
* [Kanban Board of the project](https://github.com/PersonalizedTravelMonitor/Application/projects/1)
* [Running instance of the project](https://travelmonitor.duckdns.org)
	* Use account `demo@demo.com` with password `password` to try out the software; you can also create an account for yourself but this one has a few already inserted trips for testing purpose. 

## Requirement Analysis

## Design

## Development 

### Language and Tools

To develop a Web Application for the project we used **PHP 7.1** for the backend and **HTML5, CSS3, Javascript** for the frontend.

Together with PHP we used [Laravel](https://laravel.com/), a framework with ease of use, cleanliness and best practices in mind. Since it came with many out-of-the box features it allowed us to focus on the design and implementation of the core business logic of the project. We enriched Laravel with a few packages to again, improve the development experience, mainly [Carbon](carbon.nesbot.com/docs/) (for working with dates) and [Guzzle](docs.guzzlephp.org/en/stable/quickstart.html) for working with external HTTP APIs.

For the frontend since it was very time consuming writing the style from scratch we used [Bulma.io](https://bulma.io) a modern CSS framework that does provide already-made components for implementing web interfaces. We also used [jQuery](http://jquery.com/) for handling user interaction in Javascript and modern Web APIs for sending push notifications to users (namely the [Service Worker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API))

For handling the best compatibility across the development and the production environment we used [Docker](https://www.docker.com/what-docker), a container-based solution that allowed us to develop without worrying about having the same packages/operating systems. We used an existing Docker configuration, called [Laradock](http://laradock.io/)

We kept track of the development using [git](https://git-scm.com/) and hosted the project on [GitHub](https://github.com/) as a public repository since we decided that there was no point in hiding the code and it could be useful to others developing for the same problematic. Mostly the development took place on the `master` branch but sometiems we created feature branches when we were making braking changes and did not want to distrupt other developers. Examples of branches are the `push-notifications` branch and `improve-UI` branch.

We decided to keep track of the work to be done using a [Kanban board](https://leankit.com/learn/kanban/kanban-board/) 3-column approach, keeping track using the Projects feature of GitHub. You can [see the Kanban board here](https://github.com/PersonalizedTravelMonitor/Application/projects/1).

### Patterns

Since, according to the requirement analysis, we had to develop a Web Application we decided to use an **MVC (Model View Controller)** approach for the main parts of our project. Some other parts, mainly the one that takes care of periodically checking if there are delays/events for the registered trip was developed similar to a **Broker/Worker** structure but it is a bit simpler, implemented, for example, without queues or complex services to hanle the tasks.

Since we developed the project using the PHP framework [Laravel](https://laravel.com/), it was quite straight forward to develop following the MVC pattern, since Models, Views and Controllers are at the base of the framework.

Another important pattern we applied for allowing a more agile workflow is the **Evolutionary Database Design**. It is well explained by Martin Fowler [in this webpage](https://martinfowler.com/articles/evodb.html). This pattern allows for faster prototyping and for keeping track of the DB Schema changes in the git repo.

In the design pattern compartment we used a few, mostly the one enforced by the framework by design and a few other because we felt it were necessary.

* **ORM Pattern**/**Active record**, this pattern is widely used in the project for accessing the database and for mapping the Models to the database. Provided by Laravel. 
* **Builder Pattern**, used to create the queries to be executed by the ORM. Provided by Laravel.
* **Facade**, used for implementing the different data sources so that they expose a common interface. It was used together with the **Template Class** pattern.
* **Publish/Subscribe**, for handling notifications and application-wide communication.

## Testing locally the project

In the [code repository](https://github.com/PersonalizedTravelMonitor/Application/blob/master/readme.md#development-setup) we included some instructions on how to build and test the software locally. There are a few requirements: [Docker](https://docker.com), [Docker Compose](https://docs.docker.com/compose/), [git](https://git-scm.com/).

Since it is a pretty long process to build it locally (there are a few steps to follow and it can take some times to download all the packages and docker images) we decided to [deploy the project here](travelmonitor.duckdns.org) for you to try out. We also created a demo account (`demo@demo.com` with password `password`) which has admin permissions and a few trips already planned. 