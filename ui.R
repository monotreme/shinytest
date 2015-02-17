
shinyUI(pageWithSidebar(
  headerPanel('SAT k-means clustering'),
  sidebarPanel(
    selectizeInput('xcol', 'X Variable', choices=names(SAT),options = NULL),
    selectInput('ycol', 'Y Variable', names(SAT),
                selected=names(SAT)[[7]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')
  )
))
