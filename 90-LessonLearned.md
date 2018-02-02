## Lesson Learned

### Planning and Design Phase

* We understood why the design phase is fundamental in all projects, it allowed us to really think how the project was going to be implemented (especially regarding its structure)
* Working on a project about an environment you know quite closely (public transport services) definitely proven to find critical and focal aspects of the system that needed more attention than others
* Following closely the SCORE Proposal for the project proven quite a challenge because it was very wide-scoped and had a lot of features that needed to be implemented
* It was not easy to understand how much the use cases (and diagrams in general) needed to be detailed
* It is fundamental to learn how to use modelling tools efficiently to save time and improve quality of the work

### Development phase

* We understimated development times during the initial design phase (also because we did not really plan for the exams in the first place)
* For some features of the backend it would have been better to develop following a Test Driven Development approach, we did not do so because we found writing tests very time consuming. In the end we think we should have written the test, since a lot of time was spent debugging
* Version control is fundamental and very useful, given that you know how to use it; it sped up the development allowing us to parallelize the work in all the different parts of the project
* Keeping track of tasks that needed to be done was very helpful because it allowed us to focus on work that had the highest priority
* Developing both the backend and the frontend at the same time is neither easy or fast, especially if there are involved different technologies and frameworks
	* If we could have divided ourselves between working on just the backend or on just the frontend, it would have been much faster and easier for us but we could not have learned about all the different aspects of developing a web application
* Using Docker for the development and production environment was a very good choice, we focused on the code and let the containers do the deployment and the machine setup
* Even if we mostly knew PHP working with a framework was very different than just writing simple PHP Code, some time had to be spent on training and learning the framework
	* In the end using a framework was the best choice since the resulting code was much cleaner, easier to change and less bug-prone
* SonarQube is useful, but is not enough. The PHP integration has not everything we wanted and in the end we had to use other tools for static analysis (such as [PHPStan](https://github.com/phpstan/phpstan))

#### Technical Difficulties with extenal APIs

* Working with external APIs, especially APIs not publicly available (Trenord, Trenitalia, ...) was not ideal, we spent a lot of time figuring out how the APIs worked, since they were not documented
	* If we had developed the service with a different country in mind it would have been a bit easier, since most foreign public transports offer a documented and publicly accessible API

### Other considerations

#### Quality

* If we had more time we could have completed all the features specified both in the original proposal and in the planning phase, as well as extensive QA testing and and improved user interface

#### Risks

* External APIs are not reliable, a few times they stopped working and we had to figure out how to handle these failures
	* There was and there is still the concrete risk that we could get blocked from the informations providers

