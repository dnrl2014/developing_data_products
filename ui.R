library(shiny)
shinyUI(pageWithSidebar(
  

  
  # Application title
  titlePanel("Hello Shiny!"),
  
  # Sidebar with a slider input for the number of bins
    sidebarPanel(
      h3('FROM THE Radio Button Control '),
      h3('User can pick the plot_type for the plot in R'),
      h3('"p" for points,'),
      h3 ('"l" for lines'),
      h3 ('"b" for both'),
      h3 ('"c" for the lines part alone of b'),
      h3 ('"o" for both overplotted'),
      h3 ('"h" for Histogram'),
      h3 ('"s" for stair steps'),
      h3 ('"S" for other steps'),
    radioButtons("type", label = h3("Radio buttons"),
                 choices = c("b", "h", "l","c","s","S"), selected = "b"),
 
  submitButton('Submit')
    ),
    # Show a plot of the generated distribution
mainPanel(
    
plotOutput("distPlot")
    
   
  )
)
)
