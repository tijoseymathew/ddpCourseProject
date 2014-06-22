library(shiny)
library(ggplot2)
df <- NULL
centers <- NULL
set.seed(123)
# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
  
  # Expression that generates a plot of the distribution. The expression
  # is wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically 
  #     re-executed when inputs change
  #  2) Its output type is a plot 
  #
  output$genPlot <- renderPlot({
    # generate an rnorm distribution and plot it
    x <- rnorm(input$noSamples)
    y <- rnorm(input$noSamples)
    df <<- data.frame(x,y)
    p <- ggplot(df)+
      geom_point(aes(x=x, y=y))+
      ggtitle(sprintf("%d Original generated points", input$noSamples))
    print(p)
  })
  
  output$clustPlot <- renderPlot({
    a <- input$noSamples #To make it reactive!!
    model <- kmeans(df, input$noCenters)
    centers <<- model$centers
    p <- ggplot(df)+
    geom_point(aes(x=x, y=y), col=model$cluster, shape=model$cluster)+
    ggtitle(sprintf("Points clustered with %d centers", input$noCenters))
    print(p)
  })
  
  output$centers <- renderTable( {
    a <- input$noSamples #To make it reactive!!
    a <- input$noCenters #To make it reactive!!
    centers 
  })
})