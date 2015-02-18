


shinyUI(pageWithSidebar(
  headerPanel('Average State SAT Scores in 1997'),
  sidebarPanel('This app allows you to look at 1997 SAT interactively.', 
               'Select the SAT data that you want to plot.',
    selectizeInput('xcol', 'X Variable', choices=setNames(sat.abb, sat.full),options = NULL),
    selectizeInput('ycol', 'Y Variable', choices=setNames(sat.abb, sat.full),options = NULL,  
                selected=names(SAT)[[7]]),
    "Choose the number of clusters (Kmeans)",
    numericInput('clusters', 'Cluster count', 3, min = 1, max = 9),
    "Data source: UsingR::SAT retrieved 17/2/2015.",
    bsPopover('clusters', title = "", "Divides observations into k groups.",
              placement = "right", trigger = "click"),
    bsPopover('xcol', title = "", "Variable for the horizontal axis.",
              placement = "right", trigger = "click"),
    bsPopover('ycol', title = "", "Variable for the horizontal axis.",
              placement = "right", trigger = "click")
    
  ),
  mainPanel(
    plotOutput('plot1'),
   
    "DEVELOPER'S NOTE: This app is modified from Joe Cheng's kmeans example",
    " at http://shiny.rstudio.com/gallery/kmeans-example.html.", 
    "Modifications include the use of different data, the use of the selectize function to customise the drop down box text, ",
    "customised strings for the graph axes and tooltips on the side panel that appear and disappear on click."
  )
))

