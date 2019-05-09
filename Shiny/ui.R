library(shiny)

shinyUI(pageWithSidebar(

  headerPanel("AAS-Yu Han"),

  sidebarPanel(
    radioButtons("indi", "Individual:",
                 list("NYU0010002_firstHalfData" = "NYU0010002_1",
                      "NYU0010002_secondHalfData" = "NYU0010002_2",
                      "NYU1000804_firstHalfData" = "NYU1000804_1",
                      "NYU1000804_secondHalfData" = "NYU1000804_2")),
    br()
  ),

  mainPanel(
    tabsetPanel(
      tabPanel("Plot", plotOutput("plot")), 
      tabPanel("Summary", verbatimTextOutput("summary")), 
      tabPanel("Table", tableOutput("table"))
    )
  )
))

