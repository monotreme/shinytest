


shinyUI(pageWithSidebar(
  headerPanel('Average State SAT Scores from 1997'),
  sidebarPanel('This app allows you to look at 1997 SAT interactively.', 
               'Select the SAT data that you want to plot.',
    selectizeInput('xcol', 'X Variable', choices=setNames(sat.abb, sat.full),options = NULL),
    selectizeInput('ycol', 'Y Variable', choices=setNames(sat.abb, sat.full),options = NULL,  
                selected=names(SAT)[[7]]),
    "Choose the number of clusters (Kmeans)",
    numericInput('clusters', 'Cluster count', 3, min = 1, max = 9),
    "Data source: UsingR::SAT retrieved 17/2/2015."
    
    
  ),
  mainPanel(
    plotOutput('plot1')
  )
))

