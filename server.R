library(shiny)
library(reshape2)
library(ggplot2)

shinyServer(function(input, output) {
  NYU0010002_3 <- read_csv(file="/Users/HanY/Desktop/ADHD/ADHD200_CC200_TCs_filtfix/NYU/0010002/sfnwmrda0010002_session_1_rest_1_cc200_TCs.csv")
  NYU0010002_3 <- as.matrix(NYU0010002_3[,3:192])
  NYU1000804_0 = read_csv(file = "/Users/HanY/Desktop/ADHD/ADHD200_CC200_TCs_filtfix/NYU/1000804/sfnwmrda1000804_session_1_rest_1_cc200_TCs.csv")
  NYU1000804_0 = as.matrix(NYU1000804_0[,3:192])

  data <- reactive({  
    indi <- switch(input$indi,
                   NYU0010002_1 = melt(cor(NYU0010002_3[1:86,1:20])),
                   NYU0010002_2 = melt(cor(NYU0010002_3[87:172,1:20])),
                   NYU1000804_1 = melt(cor(NYU1000804_0[1:86,1:20])),
                   NYU1000804_2 = melt(cor(NYU1000804_0[87:172,1:20])))
  })
  
  output$plot <- renderPlot({
    indi <- input$indi
    ggplot(data(), aes(Var2, Var1, fill = value))+
      xlab('1-20 ROIs')+ylab("1-20 ROIs")+
      geom_tile(color = "white")+
      scale_fill_gradientn(colours = terrain.colors(2)) +
      theme_minimal()+ 
      theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                       size = 12, hjust = 1))+
      coord_fixed()
  })
  
  # Generate a summary of the data
  output$summary <- renderPrint({
    summary(data())
  })
  
  # Generate an HTML table view of the data
  output$table <- renderTable({
    data.frame(x=data())
  })
})