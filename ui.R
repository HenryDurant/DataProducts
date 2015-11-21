


library(shiny)
library(ggplot2)

Dispatches <- read.csv("data/APDdata.csv", header = TRUE)


# Define the overall UI
shinyUI(
        
        # Use a fluid Bootstrap layout
        fluidPage(    
                
                ## Give the page a title
                titlePanel("Outcomes From the Intervention of the Crisis Outreach Team"),
                ##Text Introduction Explaining Program and App
                fluidRow(
                        column(width = 12, 
                               "The Crisis Outreach Team has been working with the Austin Police Department (APD) and the 
                               Pflugerville Police Department (PPD) to create more positive outcomes for those with mental 
                               illness who come into contact with Law Enforcement. When law enforcement suspect a person to 
                                be experiencing mental illness, they call the Crisis Outreach team to the scene, who work with 
                                people to find the outcome that provides the most appropriate level of care in the least 
                                restrictive envronment. Ideally, the crisis outreach team works with the person in the community
to link them to services. A person is seen as 'Diverted' if they do not enter the justice system. This means they are not arrested 
or taken against their will to a treatment facility. The following application allows you to explore outcomes by date and by the 
                               primary reason for the team's dispatch. You may select outcomes for Austin Police Department (APD),
                               Pflugerville Police Department (PPD), or both departments (All). You may also select a particular 
                               reason for dispatch, and date range. The data runs from 1/1/15 - 9/29/15 (and is simulated).  ")
                ),
                # Generate a row with a sidebar
                sidebarLayout(      
                        
                        # Define the sidebar with one input
                        sidebarPanel(
                                selectInput("Call.Type", "Referral Source:", 
                                            choices=c("APD", "PPD", "All 911")),
                                ## hr(),
                                selectInput("ReasonForDispatch", "Reason For Dispatch:", 
                                            choices=c("All", "Psychosis", "Suicidal Ideation", "Disturbance of Mood", 
                                                      "Self Injurious Behavior", "Substance Related")),
                                ##  helpText("Data from APD"),
                                dateInput("DateFrom", "Date From: mm-dd-yyyy", format = "mm-dd-yyyy"),
                                helpText("APD started in 1/2/15, PPD started 1/1/15"),
                                dateInput("DateTo", "Date To: mm-dd-yyyy", format = "mm-dd-yyyy"),
                                submitButton("Submit")
                        ),
                        
                        # Create a spot for the barplot
                        mainPanel(
                                plotOutput("OutcomePlot")  
                        )
                        
                )
        )
)

