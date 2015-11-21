---
title       : Crisis Outreach Team Outcomes
subtitle    : An Interactive Dashborad to Explore the Outcomes of the Crisis Outreach Team Intervention
author      : Henry Durant
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [interactive, bootstrap]     # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## Background: Crisis Outreach Team



The Crisis Outreach Team has been working with the Austin Police Department (APD) and the Pflugerville Police Department (PPD) to create more positive outcomes for those with mental illness who come into contact with Law Enforcement. The program has been running since 1/1/15, and has worked with 1108 people between then and 2015-09-29. 


---

## The Process
 

 
When law enforcement suspect a person to be experiencing mental illness, they call the Crisis Outreach team to the scene, who work with people to find the outcome that provides the most appropriate level of care in the least restrictive environment. Ideally, the crisis outreach team works with the person in the community to link them to services. A person is seen as 'Diverted' if they do not enter the justice system. This means they are not arrested or taken against their will to a treatment facility. Since 1/1/15, 954 people have been diveted from the justice system after the Crisis Team intervened. 

---

## Who Wants to Know What?

There are numerous interest groups eager to examine the outcomes of this service from many different perspectives. The following application allows the exploration of outcomes by several parameters. These include:
- The primary reason for the team's dispatch, which includes psychosis, suicidal ideation, self injurious behaviour, disturbance of mood, and prescription issues. 
- The police departments served, with options including the Austin Police Department (APD), Pflugerville Police Department (PPD), or both departments (All).
- You may also select a date range. The data runs from 1/1/15 - 2015-09-29 (and is simulated in this case). 

---

## More about the App 

The Different Outcomes Possible Are:
- Psych Voluntary: Person agreed to be taken to a Psychiatric Hospital.
- Psych Involuntary: Person was taken against their will by police to a Psychiatric Hospital as they were considered a danger to themselves or others. 
- ER Voluntary: Person agreed to be taken to an emergency room for assessment. 
- ER Involuntary: Person was taken against their will to an emergency room by the police due to being a danger to themselves or others.
- Arrested: The person was arrested. 
- Community-Followup: Person was safe to leave in the community and will be followed up with by the Crisis Team.
- Community-Declined Service: Person was deemed safe to be left in the community, but declined further assistance from the Crisis Team. 

---

## The App

I couldn't make the shiny app work in slidify, I am looking forward to seeing some examples when marking!!
<!--html_preserve--><iframe src="app2b768043d1d2e3792d4cc08edade070d/?w=&amp;__subapp__=1" width="100%" height="5" class="shiny-frame"></iframe><!--/html_preserve-->

publish(user = "HenryDurant", repo = "DataProducts")


