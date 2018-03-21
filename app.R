#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(shiny)

ui <- fluidPage(
  
  headerPanel("Predictive Model: Time between county of origin and destination"),
  
  h3("Please select features of the destination county to perform a prediction (on the fly!)"),

  ## link the JS file
  tags$head(tags$script(src="script.js")),
  ## link the CSS file
  tags$head(tags$link(rel="stylesheet", 
                      type="text/css",
                      href="style.css")),
  
  ## Input 1.
  h4('Total Number of workers'),
  tags$div(id = 'placeholder1'),
  tags$em("You selected:"),
  textOutput('txt1', inline = TRUE),
  br(), br(), br(),
  
  ## Input 2.
  h4('Total Number of workers that earn more than $3,333'),
  tags$div(id = 'placeholder2'),
  tags$em("You selected:"),
  textOutput('txt2', inline = TRUE),
  br(), br(), br(),
  
  ## Input 3.
  h4('Total Number of workers of age 55 and older'),
  tags$div(id = 'placeholder3'),
  tags$em("You selected:"),
  textOutput('txt3', inline = TRUE),
  br(), br(), br(),
  
  ## Input 4.
  h4('Total Number of workers of age 29 and younger'),
  tags$div(id = 'placeholder4'),
  tags$em("You selected:"),
  textOutput('txt4', inline = TRUE),
  br(), br(), br()
  
 
)

### Server


server <- function(input, output, session) {
  ## Function of input 1:
  output$txt1 <- renderText({ input$txt1 })
  
  ## Function of input 2:
  output$txt2 <- renderText({ input$txt2 })
  
  ## Function of input 3:
  output$txt3 <- renderText({ input$txt3 })
  
  ## Function of input 4:
  output$txt4 <- renderText({ input$txt4 })
}


# Run the application 
shinyApp(ui = ui, server = server)

