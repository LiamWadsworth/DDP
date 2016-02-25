#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Multiplier"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      textInput(inputId = "base", label="What is your base number"),
       sliderInput("multiplier",
                   "Number of bins:",
                   min = 1,
                   max = 100,
                   value = 50)
    ),
    
    # Display the result
    mainPanel(
       h3('Your answer is'),
       textOutput('text'),
       p(''),
       p(''),
       h4('Help info'),
       p('This app is a simple multiplication app, it has two steps
         1) Enter the number you want to be multipled
         2) Adjust slider bar to be the multipler 
         Your answer is auto displayed :-)')
    )
  )
))
