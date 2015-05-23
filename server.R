library(shiny)

mpg <- function(wt, hp, am) 34.00-2.88*wt-0.03*hp+2.08*am

shinyServer(
        function(input, output){
                           
                output$wt <- renderPrint({as.numeric(input$wt)})
                output$hp <- renderPrint({input$hp})
                output$am <- renderPrint({
                        ifelse (input$am == 0, "Auto-transmission", "Manual-transmission")
                        })
                output$prediction <- renderPrint({mpg(as.numeric(input$wt), input$hp, as.numeric(input$am))})
        }
)