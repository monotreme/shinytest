# Modified from Kmeans example 
# by Joe Cheng <joe@rstudio.com>
# http://shiny.rstudio.com/gallery/kmeans-example.html
#Sys.setlocale("LC_ALL", "fr_FR.UTF-8")
# Deploy using deployApp() in Rstudio.
library(UsingR)
data(SAT)
SAT$state <- NULL
palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
          "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))

shinyServer(function(input, output, session) {
  
 
  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    SAT[, c(input$xcol, input$ycol)]
  })
  
  clusters <- reactive({
    kmeans(selectedData(), input$clusters)
  })
  
  output$plot1 <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    plot(selectedData(),
         col = clusters()$cluster,
         pch = 20, cex = 3,xlab=sat.full[match(input$xcol,names(SAT))],ylab=sat.full[match(input$ycol,names(SAT))])
    points(clusters()$centers, pch = 4, cex = 4, lwd = 4)
  })
  
}
)

