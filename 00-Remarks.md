# Introduction

## The project

This is the text of the project as proposed on [the Score website](http://score-contest.org/2018/projects/ptm.php).

More and more applications are available, provided for example by transport operators such as railway companies, metropolitan of regional transportation authorities, that provide real-time information to users when disruptions occur in their networks. Typically, however, these applications provide generic information, in a “one size fits all” approach, where every user receives the same notifications.

The goal of the project is to develop a system that allows users to receive targeted, personalized information only when their routes of interest are affected by the disruptions, and only at the right time (for example, a disruption that occurs in a metro line when the user is out of town is of no interest to the user). The students are expected to identify one or more transport operators of interest, identify the available sources of information concerning disruptions (which might also be user-generated information spread through social networks, possibly through functions available on the application itself), and to create a system that provides users with information that is as accurate, timely and personalized as possible. Students are encouraged to interact with transport operators and potential users of the system to gather their expectations and needs concerning such a system.

The advent of mobile devices, which allow users to receive services while on the move, has naturally led providers of transport services and mobility-related companies to create applications that allow travelers to stay informed about events, especially disruptive ones, that occur along transport networks. However, these applications are typically restricted to monitoring a single network (or the services of a single operator), and/or deliver notifications that are not user- and context-specific. As a consequence, a user of local transportation services (metro/bus/tram lines) will typically receive notifications even when she is not in town, whereas a user of a long-distance service can monitor the situation of a specific service (e.g., a specific long-distance train, or an airplane), but it is not often that she is able to receive real-time “push” notifications when her trip is disrupted.

The goals of the project are the following:

* To design a system that allows travelers to indicate services to be monitored, and to define the kinds of events and disruptions that should be monitored.
* To develop mechanisms that allow users to receive notifications when events of interest occur for the monitored services, according to the preferences and the context of the user (e.g., only if the event is relevant given the current situation of the user, such as her position).

To achieve the goals of the project, an analysis of available sources of information concerning the status of the transport services of interest should be carried out. Given that information concerning the status of a transportation network is typically proprietary, and not always readily available, if the analysis of data sources reveals a difficulty in accessing the required data, then risk-mitigating actions must be considered (e.g., generating synthetic data).

Given the user-centeredness of the whole idea of the disruption notification system, teams tackling the project should make an effort to identify, possibly with the help of user surveys, the kinds of information and the mechanisms and timings of notifications that travelers find more useful.

## A few remarks

The project was carried out with the [Agile methodology](https://en.wikipedia.org/wiki/Agile_software_development) in mind, although not everything was done the Agile way, we developed incrementally, collected and refined requirements as we went forward with the development. We also made use of some other Agile practices such as User Stories and the Kanban Board. This way of approaching the project proved very interesting and effective, especially because we were our own stakeholders and product owner, since we planned to use the software for ourselves afterwards.

Everthing went mostly according to plan, but in the end, since exams were longer than expected, we decided to not implement some small but not core features (basically a few of the *could* and *want* features detailed in the requirement analysis) but we still carried out the initial analysis for them.

Since we gave the planning phase enough time we were able to design the project very closely to what the implementation turned out to be. This was definitely a great thing for us and it allowed the implementation to be pretty straigth-forward, basically following design documents. The only changes we had to make to the diagrams after the development were only related to naming differnces, the general workflow was still the same.

## Timeline

Before beginning the project we defined a Gantt chart to plan the evolution of the project.

TODO: INSERT GANTT

During the development we updated the Gantt and in the end this was how the project turned out to be.

TODO: INSERT GANTT

## Useful Links

* [Project Proposal on the SCORE Website](http://score-contest.org/2018/projects/ptm.php)
* [Repo of the design and analysis documents](https://github.com/PersonalizedTravelMonitor/Documents)
* [Repo of the code](https://github.com/PersonalizedTravelMonitor/Application)
	* Release Tag: `1.0`
* [Kanban Board of the project](https://github.com/PersonalizedTravelMonitor/Application/projects/1)
* [Running instance of the project](https://travelmonitor.duckdns.org)
	* Use account `demo@demo.com` with password `password` to try out the software; you can also create an account for yourself but this one has a few already inserted trips for testing purpose.

