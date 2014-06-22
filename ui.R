library(shiny)
# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("k-Means Visulaization"),
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    print("App to generate random samples and cluster them using k-Means clustering"),
    writeLines("Select the parameters below:"),
    numericInput("noSamples",
                 "Number of random samples to be generated:",
                 value = 30,
                 min = 0
    ),
    sliderInput("noCenters", 
                "Number of centers:", 
                min = 1,
                max = 10, 
                value = 5),
    print("Identified cluster centers:"),
    tableOutput("centers")
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("genPlot"),
    plotOutput("clustPlot")
  )
))