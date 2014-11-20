library(shiny)
ConversionToMetrics <- function(Area) Area*0.092903
shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$Area})
                output$conversion <- renderPrint({ConversionToMetrics(input$Area)})
        }
)