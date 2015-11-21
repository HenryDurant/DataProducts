##Descriptives App




library(shiny)
library(ggplot2)
library(dplyr)
library(lubridate)


Dispatches <- read.csv("data/APDdata.csv", header = TRUE)

# Define a server for the Shiny app
shinyServer(
        function(input, output) {
                output$OutcomePlot <- renderPlot({
                        
                        ifelse(input$Call.Type == "APD", plotdata <- filter(Dispatches, Call.Type == "APD"),
                               ifelse(input$Call.Type == "PPD", plotdata <- filter(Dispatches, Call.Type == "PPD"),
                                      plotdata <- filter(Dispatches, Call.Type == "APD" | Call.Type == "PPD")))
                        
                        ifelse(input$ReasonForDispatch == "Psychosis", plotdata <- filter(plotdata, ReasonForDispatch == "Psychosis"),
                               ifelse(input$ReasonForDispatch == "Suicidal Ideation", plotdata <- filter(plotdata, ReasonForDispatch == "Suicidal Ideation"),
                                      ifelse(input$ReasonForDispatch == "Disturbance of Mood", plotdata <- filter(plotdata, ReasonForDispatch == "Disturbance of Mood"),
                                             ifelse(input$ReasonForDispatch == "Substance Related", plotdata <- filter(plotdata, ReasonForDispatch == "Substance Related"),
                                                    ifelse(input$ReasonForDispatch == "Self Injurious Behavior", plotdata <- filter(plotdata, ReasonForDispatch == "Self Injurious Behavior"),
                                                           plotdata <= plotdata)))))
                        
                        plotdata$Date.of.Dispatch <- mdy(plotdata$Date.of.Dispatch)
                        plotdata <- subset(plotdata, as.Date(Date.of.Dispatch) >= input$DateFrom)
                        plotdata <- subset(plotdata, as.Date(Date.of.Dispatch) <= input$DateTo)
                        
                        plotdata <- select(plotdata, Outcome)
                        plotdata <- plotdata %>% group_by(Outcome) %>%
                                summarise(n())
                        plotdata <- as.data.frame(plotdata)
                        colnames(plotdata)[2] <- "Count"
                        plotdata1 <- within(plotdata, Outcome <- factor(Outcome, 
                                                                        levels=names(sort(table(Outcome), 
                                                                                          decreasing=FALSE))))
                   
                        graph <- ggplot(plotdata1, aes(x = Outcome, y = Count))+
                                geom_histogram(stat = "identity")+
                                coord_flip()
                        graph
                        
                })
        })

